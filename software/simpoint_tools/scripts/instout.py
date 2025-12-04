import re
import sys

def parse_basic_blocks(file_path):
    """
    解析基本块的起始和结束地址。
    """
    basic_blocks = []
    with open(file_path, 'r') as file:
        for line in file:
            match = re.match(r'BasicBlockRange: \((0x[0-9a-fA-F]+), (0x[0-9a-fA-F]+)\)', line)
            if match:
                start_addr = int(match.group(1), 16)
                end_addr = int(match.group(2), 16)
                basic_blocks.append((start_addr, end_addr))
    # print(basic_blocks)
    return basic_blocks

def parse_elf_disassembly(file_path):
    """
    解析反汇编文件的指令信息。
    """
    instructions = []
    with open(file_path, 'r') as file:
        for line in file:
            # 匹配每条指令的地址、机器码和反汇编信息
            match = re.match(r'^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]+)\s+(.*)', line)
            if match:
                addr = int(match.group(1), 16)  # 解析指令地址
                opcode = match.group(2)         # 指令编码（机器码）
                instr = match.group(3).strip().replace('\t', '  ')  # 反汇编后的指令
                instructions.append((addr, opcode, instr))
            # 忽略如 "0000000080000116 <cmp_idx>:" 的标记行
            else:
                continue
    # print(instructions)
    return instructions

def map_instructions_to_basic_blocks(basic_blocks, instructions):
    """
    将指令映射到基本块中。
    """
    block_instr_map = {}
    for start_addr, end_addr in basic_blocks:
        block_instr_map[(start_addr, end_addr)] = []
        for addr, opcode, instr in instructions:
            if start_addr <= addr <= end_addr:
                block_instr_map[(start_addr, end_addr)].append((addr, opcode, instr))
    return block_instr_map

def main(bb_file_path, elf_disassembly_path, output_file_path):
    # 解析基本块和反汇编指令
    basic_blocks = parse_basic_blocks(bb_file_path)
    instructions = parse_elf_disassembly(elf_disassembly_path)

    # 将指令映射到基本块
    block_instr_map = map_instructions_to_basic_blocks(basic_blocks, instructions)

    # 将结果输出到指定文件
    with open(output_file_path, 'w') as output_file:
        index = 1
        for (start, end), instrs in block_instr_map.items():
            output_file.write(f"{index} Basic Block: ({hex(start)}, {hex(end)})\n")
            index += 1
            for addr, opcode, instr in instrs:
                formatted_opcode = opcode.zfill(8)
                output_file.write(f"  {hex(addr)}: {formatted_opcode} \t\t{instr}\n")
            output_file.write("\n")

if __name__ == '__main__':
    # 检查命令行参数
    if len(sys.argv) != 4:
        print("Usage: python script_name.py <bb_file_path> <elf_disassembly_path> <output_file_path>")
        sys.exit(1)
    
    # 获取命令行参数
    bb_file_path = sys.argv[1]
    elf_disassembly_path = sys.argv[2]
    output_file_path = sys.argv[3]

    main(bb_file_path, elf_disassembly_path, output_file_path)
