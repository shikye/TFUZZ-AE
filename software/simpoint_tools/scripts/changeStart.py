import sys

def modify_file(mode, input_file, output_file):
    input_file_path = input_file  # 设置你的文件路径
    output_file_path = output_file  # 设置输出文件的路径

    before_active = mode == 'before'
    
    with open(input_file_path, 'r') as file:
        lines = file.readlines()

    with open(output_file_path, 'w') as file:
        inside_before = False
        inside_after = False

        for line in lines:
            if '# for beforeSimPoint==========' in line:
                inside_before = not inside_before  # 切换状态
                file.write(line)
                continue

            if '# for afterSimPoint==========' in line:
                inside_after = not inside_after  # 切换状态
                file.write(line)
                continue

            if inside_before:
                if before_active:
                    file.write("  " + line.lstrip('# ').lstrip())  # 激活代码行
                else:
                    file.write("  " + '# ' + line.lstrip() if not line.startswith('# ') else line)  # 注释代码行
            elif inside_after:
                if not before_active:
                    file.write("  " + line.lstrip('# ').lstrip())  # 激活代码行
                else:
                    file.write("  " + '# ' + line.lstrip() if not line.startswith('# ') else line)  # 注释代码行
            else:
                file.write(line)

if __name__ == "__main__":
    if len(sys.argv) != 4 or sys.argv[1] not in ['before', 'after']:
        print("Usage: python script.py <before|after> input_file output_file")
        sys.exit(1)
    
    modify_file(sys.argv[1], sys.argv[2], sys.argv[3])
