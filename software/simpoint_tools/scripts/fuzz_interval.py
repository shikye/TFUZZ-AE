import re
import sys

def find_corresponding_index(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    index_pair = {}
    index_pattern = re.compile(r"#\sInterval\s(\d+)")

    index_from_zero = 0
    for line in lines:
        match = index_pattern.search(line)
        if match:
            index = int(match.group(1))
            index_pair[index] = index_from_zero
            index_from_zero += 1
    
    return index_pair


# 获取目标 Init_data_{index} 中的 ra 和 sp 值
def get_ra_sp_from_target(lines, target_index):
    ra_pattern = re.compile(r"\.dword\s+(0x[0-9a-fA-F]+)\s+#\s+ra")
    sp_pattern = re.compile(r"\.dword\s+(0x[0-9a-fA-F]+)\s+#\s+sp")
    
    in_target_block = False
    ra_value, sp_value = None, None

    for line in lines:
        if f"Init_data_{target_index}:" in line:
            in_target_block = True
        
        if in_target_block:
            if ra_pattern.search(line):
                ra_value = ra_pattern.search(line).group(1)
            elif sp_pattern.search(line):
                sp_value = sp_pattern.search(line).group(1)
            
            if ra_value and sp_value:
                break

    if not ra_value or not sp_value:
        raise ValueError(f"Could not find both ra and sp values in Init_data_{target_index}.")
    
    return ra_value, sp_value

# 修改所有 Init_data 中的 ra 和 sp 值
def modify_ra_sp(lines, target_ra, target_sp):
    ra_pattern = re.compile(r"\.dword\s+0x[0-9a-fA-F]+(\s+#\s+ra)")
    sp_pattern = re.compile(r"\.dword\s+0x[0-9a-fA-F]+(\s+#\s+sp)")

    new_lines = []
    for line in lines:
        if ra_pattern.search(line):
            line = ra_pattern.sub(f".dword {target_ra}  # ra", line)
        elif sp_pattern.search(line):
            line = sp_pattern.sub(f".dword {target_sp}  # sp", line)
        new_lines.append(line)
    
    return new_lines

# 获取目标 Init_interval_{index} 中的 li t4 的机器码
def get_li_t4_from_target_interval(lines, target_index):
    li_t4_pattern = re.compile(r"\s+li\s+t4,\s+(0x[0-9a-fA-F]+)")

    in_target_block = False
    machine_code = None
    
    for line in lines:
        if f"Init_interval_{target_index}:" in line:
            in_target_block = True
        
        if in_target_block:
            match = li_t4_pattern.search(line)
            if match:
                machine_code = match.group(1)
                break
    
    if not machine_code:
        raise ValueError(f"Could not find 'li t4' instruction in Init_interval_{target_index}.")
    
    return machine_code

# 修改所有 Init_interval 中的 li t4 机器码
def modify_li_t4_in_all_intervals(lines, new_machine_code):
    li_t4_pattern = re.compile(r"\s+li\s+t4,\s+0x[0-9a-fA-F]+")

    new_lines = []
    for line in lines:
        if li_t4_pattern.search(line):
            # 替换 li t4 指令中的机器码为新的 machine_code
            line = li_t4_pattern.sub(f"    li t4, {new_machine_code}", line)
        
        new_lines.append(line)
    
    return new_lines

# 主函数，整合 ra/sp 和 li t4 的修改
def modify_init_data(file_path, target_index):
    # 读取原始文件
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # 获取目标 Init_data_{index} 的 ra 和 sp 值
    target_ra, target_sp = get_ra_sp_from_target(lines, target_index)

    # 修改所有 Init_data 的 ra 和 sp 值
    lines = modify_ra_sp(lines, target_ra, target_sp)

    # 获取目标 Init_interval_{index} 中的 li t4 的机器码
    target_machine_code = get_li_t4_from_target_interval(lines, target_index)

    # 修改所有 Init_interval 中的 li t4 机器码
    lines = modify_li_t4_in_all_intervals(lines, target_machine_code)

    # 将修改后的内容写回文件
    with open(file_path, 'w') as file:
        file.writelines(lines)

if __name__ == "__main__":
    # 检查参数是否正确
    if len(sys.argv) != 3:
        print("Usage: python script.py <file_path> <index>")
        sys.exit(1)

    # 从命令行参数获取文件路径和目标 Init_data 的 index
    file_path = sys.argv[1]
    interval_num = int(sys.argv[2])


    # 查找所有 Init_data_{index} 的 index 与从 0 开始的 index 的对应关系
    index_pair = find_corresponding_index(file_path)
    target_index = index_pair[interval_num]

    # 执行修改操作
    modify_init_data(file_path, target_index)
