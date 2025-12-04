import argparse
import os
import glob
import re

def convert_txt_to_bin(txt_file, bin_file):
    with open(txt_file, 'r') as f_in, open(bin_file, 'wb') as f_out:
        lines = f_in.readlines()

        for line in lines:
            line = line.strip()
            bin_data = bytes.fromhex(line)[::-1]
            f_out.write(bin_data)
    



def main():
    parser = argparse.ArgumentParser(description="txt to bin")
    parser.add_argument('input_directory', type=str, help="Directory containing the input txt files")
    parser.add_argument('output_directory', type=str, help="Directory to store the output bin files")

    args = parser.parse_args()

    if not os.path.exists(args.output_directory):
        os.makedirs(args.output_directory)
    
    input_files = glob.glob(os.path.join(args.input_directory, '*.txt'))

    numbered_files = []
    for file in input_files:
        match = re.search(r'(\d+)_dumpmem\.txt', file)
        if match:
            number = int(match.group(1))
            numbered_files.append((number, file))
    
    numbered_files.sort()

    for index, (number, input_files) in enumerate(numbered_files):
        base = os.path.basename(input_files)
        output_file = os.path.join(args.output_directory, base.replace('.txt', '.bin'))
        convert_txt_to_bin(input_files, output_file)
    
if __name__ == "__main__":
    main()
