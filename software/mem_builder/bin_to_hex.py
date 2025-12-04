#!/usr/bin/env python3
import sys
import os

def bin_to_hex(bin_file, hex_file):
    with open(bin_file, "rb") as f:
        data = f.read()

    # 确保长度是8的倍数（64-bit）
    if len(data) % 8 != 0:
        padding = 8 - (len(data) % 8)
        data += b'\x00' * padding
        print(f"[INFO] Padding {padding} bytes to align to 8-byte boundary.")

    with open(hex_file, "w") as f:
        for i in range(0, len(data), 8):
            word = data[i:i+8]
            value = int.from_bytes(word, byteorder="little")  # little-endian
            f.write(f"{value:016x}\n")

    print(f"[SUCCESS] Wrote hex file: {hex_file} ({len(data)} bytes)")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("用法: python bin_to_hex.py input.bin output.hex")
        sys.exit(1)

    bin_path = sys.argv[1]
    hex_path = sys.argv[2]

    if not os.path.exists(bin_path):
        print(f"[ERROR] 找不到文件: {bin_path}")
        sys.exit(1)

    bin_to_hex(bin_path, hex_path)
