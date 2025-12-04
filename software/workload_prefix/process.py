import re

def process_text_section(file_path, output_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # 识别.text段开始的位置
    in_text_section = False
    instructions = []
    for line in lines:
        if "Disassembly of section .text" in line:
            in_text_section = True
            continue
        elif "Disassembly of section" in line and in_text_section:
            # 退出.text段
            break
        elif in_text_section:
            # 匹配指令的十六进制部分
            match = re.search(r'\s+([0-9a-fA-F]{8})\s+', line)
            if match:
                instructions.append(match.group(1))

    # 计算总字节数（每条指令4字节）
    total_bytes = len(instructions) * 4

    # 按对分组，并格式化为SystemVerilog，确保高位和低位顺序正确
    verilog_output = "assign prefix_inst_storage = '{\n"
    for i in range(0, len(instructions), 2):
        inst_pair = instructions[i:i + 2]
        if len(inst_pair) == 2:
            hex_pair = f"64'h{inst_pair[1]}_{inst_pair[0]}"
        else:
            # 如果是单个指令，不成对处理
            hex_pair = f"64'h0040006f_{inst_pair[0]}"
        verilog_output += f"    {hex_pair},\n"
    verilog_output = verilog_output.rstrip(",\n") + "\n};\n"
    verilog_output += f"\n// Total bytes: {total_bytes}\n"

    # 写入到输出文件
    with open(output_path, 'w') as output_file:
        output_file.write(verilog_output)

# 使用示例
file_path = "build/image.dump"  # 替换为您的输入文件路径
output_path = "output_verilog.sv"        # 替换为您希望的输出文件路径
process_text_section(file_path, output_path)
print(f"Output written to {output_path} with total bytes noted.")
