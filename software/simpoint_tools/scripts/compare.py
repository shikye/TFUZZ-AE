import hashlib
import glob

def file_hash(filepath):
    """ 计算文件的 MD5 哈希值 """
    hash_md5 = hashlib.md5()
    with open(filepath, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()

def compare_files(file_directory):
    """ 对比目录中所有文件的哈希值 """
    files = list(glob.glob(f"{file_directory}/interval_*_dumpmem.bin"))
    if not files:
        print("No files found.")
        return

    file_hashes = {file: file_hash(file) for file in files}
    all_same = len(set(file_hashes.values())) == 1

    if all_same:
        print("All files are identical.")
    else:
        print("Files are not all identical. Different files listed below:")
        for file, hash_value in file_hashes.items():
            print(f"{file}: {hash_value}")

if __name__ == '__main__':
    # 使用文件所在目录路径作为命令行参数
    import sys
    if len(sys.argv) != 2:
        print("Usage: python script_name.py <bin_files_directory>")
        sys.exit(1)
    
    bin_files_directory = sys.argv[1]
    compare_files(bin_files_directory)
