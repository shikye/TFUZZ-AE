import argparse
import os
import glob
import re
import subprocess
import struct
from elftools.elf.elffile import ELFFile

def get_symbol_address(elf_file, symbol_name):
    """Get the address of a symbol in the ELF file."""
    try:
        # 使用 readelf 命令来读取符号表
        result = subprocess.run(['readelf', '-s', elf_file], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if result.returncode != 0:
            raise Exception(f"Error running readelf: {result.stderr}")
        
        # 查找符号表中的 Init_counter 符号
        for line in result.stdout.splitlines():
            if symbol_name in line:
                parts = line.split()
                address = int(parts[1], 16)  # 第二列是符号的地址（16进制）
                return address
        raise Exception(f"Symbol {symbol_name} not found in {elf_file}")
    
    except Exception as e:
        print(f"Error: {e}")
        return None

def get_data_section_start(elf_file):
    """Get the starting address of the .data section in an ELF file."""
    with open(elf_file, 'rb') as f:
        elffile = ELFFile(f)
        for section in elffile.iter_sections():
            if section.name == '.data':
                return section['sh_addr']
    return None

def binary_to_txt_little_endian(input_file, output_file, symbol_address, data_section_start, sequence_number):
    """Modify binary file and convert to text in little-endian format."""
    try:
        # 计算偏移地址
        if symbol_address is not None and data_section_start is not None:
            adjusted_address = symbol_address - data_section_start
            print(f"Adjusted address for modification: {adjusted_address}")
        else:
            raise Exception("Symbol address or data segment start is missing")

        with open(input_file, 'rb') as bin_file:
            binary_data = bytearray(bin_file.read())  # 使用 bytearray 以便于修改数据

        # 修改符号地址对应的内容
        if adjusted_address >= 0 and adjusted_address + 8 <= len(binary_data):
            binary_data[adjusted_address:adjusted_address+8] = struct.pack('<Q', sequence_number)  # 小端序格式
        else:
            raise Exception("Adjusted address is out of range")

        # 将修改后的数据写入文本文件
        with open(output_file, 'w') as txt_file:
            for i in range(0, len(binary_data), 8):
                chunk = binary_data[i:i+8]
                little_endian_chunk = chunk[::-1]  # 转换为小端序
                hex_chunk = ''.join(f'{byte:02x}' for byte in little_endian_chunk)
                txt_file.write(hex_chunk + '\n')

        print(f"Successfully converted {input_file} to {output_file} with modifications at adjusted address {adjusted_address}")

    except Exception as e:
        print(f"Error: {e}")

def main():
    parser = argparse.ArgumentParser(description="Modify and convert binary files.")
    parser.add_argument('input_directory', type=str, help="Directory containing the input binary files")
    parser.add_argument('output_directory', type=str, help="Directory to store the output text files")
    parser.add_argument('elf_file', type=str, help="ELF file to extract symbol information")
    parser.add_argument('--symbol', type=str, default="Init_counter", help="Symbol to modify in the binary files (default: Init_counter)")

    args = parser.parse_args()

    # 获取符号地址
    symbol_address = get_symbol_address(args.elf_file, args.symbol)
    if symbol_address is None:
        print(f"Error: Could not find symbol {args.symbol}")
        return
    print("symbol_address:", hex(symbol_address))

    # 获取 .data 段的起始地址
    data_section_start = get_data_section_start(args.elf_file)
    if data_section_start is None:
        print("Error: Could not determine data segment start address")
        return

    # 确保输出目录存在
    if not os.path.exists(args.output_directory):
        os.makedirs(args.output_directory)

    # 查找输入目录中的所有 .bin 文件
    input_files = glob.glob(os.path.join(args.input_directory, '*.bin'))

    # 按照文件名中的数字进行排序
    numbered_files = []
    for file in input_files:
        match = re.search(r'(\d+)_dumpmem\.bin', file)
        if match:
            number = int(match.group(1))
            numbered_files.append((number, file))
    
    # 按提取的数字进行排序
    numbered_files.sort()

    # 依次处理文件
    for index, (number, input_file) in enumerate(numbered_files):
        base = os.path.basename(input_file)
        output_file = os.path.join(args.output_directory, base.replace('.bin', '.txt'))
        binary_to_txt_little_endian(input_file, output_file, symbol_address, data_section_start, index)

if __name__ == "__main__":
    main()
