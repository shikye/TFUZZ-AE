#!/usr/bin/env python3
import os
import re
import glob
import struct
import sys

def process_log_file(log_file, output_file):
    """
    处理单个日志文件，将其中的写操作转换为二进制内存镜像文件。

    日志行示例：
      memory[0] <= 1182829300000297
      memory[8] <= 0000009330529073
      ...
    """
    # 正则表达式匹配：捕获地址和数据部分
    pattern = re.compile(r'memory\[(\d+)\]\s*<=\s*([0-9A-Fa-f]+)')
    max_addr = -1
    entries = []

    with open(log_file, 'r') as fin:
        for line in fin:
            line = line.strip()
            if not line:
                continue
            m = pattern.match(line)
            if m:
                addr_str, data_str = m.groups()
                addr = int(addr_str)
                value = int(data_str, 16)
                entries.append((addr, value))
                if addr > max_addr:
                    max_addr = addr
            else:
                print(f"无法匹配行：{line}")

    if max_addr < 0:
        print(f"文件 {log_file} 中没有匹配的内容，跳过处理。")
        return

    # 内存大小：最大地址 + 8（每条记录为8字节）
    mem_size = max_addr + 8
    mem_image = bytearray(mem_size)

    # 根据日志内容，将每条记录写入对应地址处（以字节为单位）
    # 这里采用 little-endian 格式，如果需要 big-endian，请将 '<Q' 改为 '>Q'
    for addr, value in entries:
        data_bytes = struct.pack('<Q', value)
        if addr + 8 <= mem_size:
            mem_image[addr:addr+8] = data_bytes
        else:
            print(f"警告：地址 {addr} 超出内存范围 (mem_size={mem_size})")

    # 写入二进制文件
    with open(output_file, 'wb') as fout:
        fout.write(mem_image)
    print(f"处理 {log_file} 完成，生成内存镜像文件：{output_file} (大小: {mem_size} 字节)")

def process_all_logs(folder):
    """
    扫描 folder 文件夹下所有符合 write_log_*.txt 命名规则的日志文件，
    按照数字顺序处理，并生成对应的二进制文件 mem_image_*.bin。
    """
    pattern = os.path.join(folder, "write_log_*.txt")
    log_files = glob.glob(pattern)
    if not log_files:
        print(f"在 {folder} 中未找到匹配的日志文件。")
        return

    # 按照文件名中的数字排序
    def sort_key(filename):
        m = re.search(r'write_log_(\d+)\.txt', os.path.basename(filename))
        return int(m.group(1)) if m else 0

    log_files.sort(key=sort_key)

    for log_file in log_files:
        # 根据日志文件名生成对应输出文件名
        base = os.path.splitext(os.path.basename(log_file))[0]
        output_file = os.path.join(folder, base.replace("write_log", "mem_image") + ".bin")
        process_log_file(log_file, output_file)

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("用法: python process_log.py <log_folder>")
        sys.exit(1)
    folder = sys.argv[1]
    process_all_logs(folder)
