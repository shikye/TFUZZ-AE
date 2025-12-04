import sys
import glob
from elftools.elf.elffile import ELFFile

def get_data_section_start(filename):
    """Get the starting address of the .data section in an ELF file."""
    with open(filename, 'rb') as f:
        elffile = ELFFile(f)
        for section in elffile.iter_sections():
            if section.name == '.data':
                return section['sh_addr']
    return None

def truncate_file_at_zero_end(filename):
    """Truncate a file by removing trailing zero bytes."""
    with open(filename, 'r+b') as f:
        f.seek(0, 2)
        file_size = f.tell()
        position = file_size - 1
        while position >= 0:
            f.seek(position)
            if f.read(1) != b'\x00':
                break
            position -= 1
        f.truncate(position + 1)

def keep_content_after_position(filename, position):
    """Keep the content of the file after a specified position."""
    with open(filename, 'r+b') as f:
        f.seek(0, 2)
        file_size = f.tell()
        if position < 0 or position >= file_size:
            raise ValueError("Position must be within the range of the file size.")
        f.seek(position)
        remaining_content = f.read()
        f.seek(0)
        f.write(remaining_content)
        f.truncate()

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: python script_name.py <elf_file_path> <bin_files_directory>")
        sys.exit(1)
    
    elf_path = sys.argv[1]
    bin_files_directory = sys.argv[2]
    
    # 获取 .data 段的起始地址
    data_section_start = get_data_section_start(elf_path)

    if data_section_start is not None:
        print(f"Data segment starts at: 0x{data_section_start:08x}")

    # 处理 bin 文件
    for file_path in glob.glob(f"{bin_files_directory}/interval_*_dumpmem.bin"):
        truncate_file_at_zero_end(file_path)
        keep_content_after_position(file_path, data_section_start - 0x100000000)
        print(f"Processed: {file_path}")
