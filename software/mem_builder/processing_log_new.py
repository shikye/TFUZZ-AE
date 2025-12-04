#!/usr/bin/env python3
import os
import re
import glob
import struct
import sys

def fix_log_file(log_file, fix_file):
    """
    读取原始日志文件 write_log_n.txt，解析所有条目，
    并在指令段末尾补充 ecall 指令（根据要求判断“满”或“部分填充”）。
    
    规则说明：
      - 每行格式为:  memory[地址] <= 数据
      - 先按地址排序，并以地址间隔大于 8（字节）判断为指令段与数据段的分界。
      - 如果指令段最后条目的高 32 位不为 0（即“满”），例如:
            memory[n] <= 0000003300000033
        则在其后追加两个条目：
            memory[n+1] <= 05d0089300000513
            memory[n+2] <= 0000000000000073
      - 如果高 32 位为 0（部分填充），则修改该条目，填充高 32 位为 00000513，
        并追加一个条目，其内容为高 32 位 00000073、低 32 位 05d00893。
    """
    pattern = re.compile(r'memory\[(\d+)\]\s*<=\s*([0-9A-Fa-f]+)')
    entries = []
    
    with open(log_file, 'r') as fin:
        for line in fin:
            line = line.strip()
            if not line:
                continue
            m = pattern.match(line)
            if m:
                addr = int(m.group(1))
                value = int(m.group(2), 16)
                entries.append((addr, value))
            else:
                print(f"无法匹配行：{line}")
    
    if not entries:
        print(f"文件 {log_file} 中没有匹配的内容，跳过处理。")
        return
    
    # 按地址排序
    entries.sort(key=lambda x: x[0])
    
    # 将连续条目视为指令段，不连续后剩下的为数据段
    instr_entries = []
    data_entries = []
    instr_entries.append(entries[0])
    for i in range(1, len(entries)):
        if entries[i][0] - entries[i-1][0] > 8:
            data_entries = entries[i:]
            break
        else:
            instr_entries.append(entries[i])
    else:
        data_entries = []
    
    # 如果存在指令段，则在末尾添加补充条目
    if instr_entries:
        last_addr, last_value = instr_entries[-1]
        if (last_value >> 32) == 0:
            # 部分填充：高32位为0
            new_last_value = (0x00000513 << 32) | (last_value & 0xffffffff)
            instr_entries[-1] = (last_addr, new_last_value)
            # 追加一个条目：将后面两条指令拼接成一条
            instr_entries.append((last_addr + 8, (0x00000073 << 32) | 0x05d00893))
        else:
            # 满条目：追加两个条目
            instr_entries.append((last_addr + 8, (0x05d00893 << 32) | 0x00000513))
            instr_entries.append((last_addr + 16, 0x0000000000000073))
    
    # 合并指令段和数据段，按地址排序
    final_entries = instr_entries + data_entries
    final_entries.sort(key=lambda x: x[0])
    
    # 写出 fix_log 文件，每行格式: memory[地址] <= 数据（16位十六进制，不带前缀）
    with open(fix_file, 'w') as fout:
        for addr, value in final_entries:
            fout.write(f"memory[{addr}] <= {value:016x}\n")
    print(f"生成修正文件 {fix_file}")

def log_to_bin(input_file, bin_file):
    """
    根据修正后的日志文件（fix_log_n.txt）生成内存镜像二进制文件。
    每行格式: memory[地址] <= 数据
    """
    pattern = re.compile(r'memory\[(\d+)\]\s*<=\s*([0-9A-Fa-f]+)')
    entries = []
    
    with open(input_file, 'r') as fin:
        for line in fin:
            line = line.strip()
            if not line:
                continue
            m = pattern.match(line)
            if m:
                addr = int(m.group(1))
                value = int(m.group(2), 16)
                entries.append((addr, value))
            else:
                print(f"无法匹配行：{line}")
    
    if not entries:
        print(f"文件 {input_file} 中没有匹配的内容，跳过生成二进制文件。")
        return
    
    # 内存大小：最大地址 + 8
    max_addr = max(addr for addr, _ in entries)
    mem_size = max_addr + 8
    mem_image = bytearray(mem_size)
    
    for addr, value in entries:
        if addr + 8 <= mem_size:
            mem_image[addr:addr+8] = struct.pack('<Q', value)
        else:
            print(f"警告：地址 {addr} 超出内存范围 (mem_size={mem_size})")
    
    with open(bin_file, 'wb') as fout:
        fout.write(mem_image)
    print(f"生成内存镜像二进制文件 {bin_file} (大小: {mem_size} 字节)")

def process_all_logs(folder):
    """
    扫描 folder 中所有 write_log_*.txt 文件，
    为每个文件生成 fix_log_*.txt 和 mem_image_*.bin 文件。
    """
    pattern = os.path.join(folder, "write_log_*.txt")
    log_files = glob.glob(pattern)
    if not log_files:
        print(f"在 {folder} 中未找到匹配的日志文件。")
        return
    
    def sort_key(filename):
        m = re.search(r'write_log_(\d+)\.txt', os.path.basename(filename))
        return int(m.group(1)) if m else 0
    log_files.sort(key=sort_key)
    
    for log_file in log_files:
        base = os.path.splitext(os.path.basename(log_file))[0]
        fix_file = os.path.join(folder, base.replace("write_log", "fix_log") + ".txt")
        bin_file = os.path.join(folder, base.replace("write_log", "mem_image") + ".bin")
        fix_log_file(log_file, fix_file)
        log_to_bin(fix_file, bin_file)

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("用法: python process_log.py <log_folder>")
        sys.exit(1)
    folder = sys.argv[1]
    process_all_logs(folder)
