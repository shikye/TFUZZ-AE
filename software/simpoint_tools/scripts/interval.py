import sys

def parse_riscv_state(file_path):
    with open(file_path, 'r') as file:
        data = file.read()

    # 寄存器名称映射
    register_names = {
        **{f'x{i}': name for i, name in enumerate([
            "$0", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
            "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
            "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
            "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
        ])},
        **{f'f{i}': name for i, name in enumerate([
            "ft0", "ft1", "ft2", "ft3", "ft4", "ft5", "ft6", "ft7",
            "fs0", "fs1", "fa0", "fa1", "fa2", "fa3", "fa4", "fa5",
            "fa6", "fa7", "fs2", "fs3", "fs4", "fs5", "fs6", "fs7",
            "fs8", "fs9", "fs10", "fs11", "ft8", "ft9", "ft10", "ft11"
        ])}
    }

    # 按间隔分割数据
    intervals = data.split('=====================================================================')
    parsed_data = []

    for interval in intervals:
        if interval.strip():
            interval_data = {}
            lines = interval.split('\n')
            for line in lines:
                if line.strip():
                    # 特殊处理Interval标号行
                    if "Interval" in line:
                        interval_number = line.split()[1]
                        interval_data['interval'] = interval_number
                    elif ':' in line:
                        key, value = line.split(':', 1)
                        key = key.strip().lower()  # 将键统一为小写
                        value = value.strip()
                        # 使用映射表更改寄存器名称
                        mapped_key = register_names.get(key, key)
                        if key != "architecture state":  # 排除不需要的数据
                            interval_data[mapped_key] = value
            parsed_data.append(interval_data)
    
    output_file_path = "output/intermediate.txt"
    with open(output_file_path, 'w') as output_file:
        for interval in parsed_data:
            output_file.write(f'Interval {interval.get("interval")}\n')
            for key, value in interval.items():
                if key != "interval":  # 排除Interval标号的重复写入
                    output_file.write(f'{key}: {value}\n')
            output_file.write('\n')
    
    return parsed_data


def generate_riscv_assembly(parsed_data):
    NUM_SETS = 64
    ASSOCIATIVITY = 8
    LINE_SIZE = 64

    assembly_code = [
        ".section .init",
        ".globl Init_table",
        ".globl Simpoint_Phase_Context",
        "Init_table:",
        "    la t0, Init_counter",
        "    lw t1, 0(t0)",
        "    addi t1, t1, 1",
        "    sw t1, 0(t0)",
        "    # Depending on the value of Init_counter, jump to the appropriate interval"
    ]
    
    # 生成跳转逻辑
    for i in range(len(parsed_data)):
        assembly_code.append(f"    li t2, {i+1}")
        assembly_code.append(f"    beq t1, t2, Init_interval_{i}")

    # 生成各个interval的标签和数据初始化
    data_section = [".section .interval,\"aw\",@progbits", ".align 3\nInit_counter: .word 0\ntemp_data: .word 0\n .word 0\n .word 0\n"]
    # data_section = [".section .data", ".align 3\nInit_counter: .word 0\ntemp_data: .word 0\n .word 0\n .word 0\n"]

    


    
    for i, interval in enumerate(parsed_data):
        assembly_code.append(f"# Interval {parsed_data[i].get('interval')}")
        assembly_code.append(".align 3")
        assembly_code.append(f"Init_interval_{i}:")



        # ################################################
        # # 设置 buffer 指针到 x10
        # assembly_code.append("    la x10, buffer")

        # # 初始化常量
        # assembly_code.append(f"    li x14, {NUM_SETS}")
        # assembly_code.append(f"    li x15, {ASSOCIATIVITY}")
        # assembly_code.append(f"    li x16, {LINE_SIZE}")

        # # 初始化set
        # assembly_code.append("    li x11, 0")

        # assembly_code.append("set_loop:\n    bge x11, x14, set_loop_end")
        
        # assembly_code.append("    li x12, 0")

        # assembly_code.append("way_loop:\n    bge x12, x15, way_loop_end")

        # # 计算 offset = [(way * NUM_SETS) + set] * LINE_SIZE
        # assembly_code.append("    mul x17, x12, x14") # x17 = way * NUM_SETS
        # assembly_code.append("    add x17, x17, x11") # x17 = x17 + set
        # assembly_code.append("    mul x17, x17, x16") # x17 = x17 * LINE_SIZE

        # # 加载数据
        # assembly_code.append("    add x17, x10, x17") # x17 = buffer + offset
        # assembly_code.append("    lb x13, 0(x17)")

        # # way += 1
        # assembly_code.append("    addi x12, x12, 1")
        # assembly_code.append("    j way_loop")

        # assembly_code.append("way_loop_end:\n    addi x11, x11, 1")
        # assembly_code.append("    j set_loop")

        # assembly_code.append("set_loop_end:")
        # ################################################

        assembly_code.append(f"    la t3, Init_data_{i}  # Load address of Init_data_{i} once")
        data_section.append(f".align 9\nInit_data_{i}:")
        
        offset = 0
        pc_value = None  # 默认情况下，pc值为空

        t3_offset = 0
        pc_offset = 0

        for key, value in interval.items():
            # if key == 'pc':
            #     pc_value = (value)  # 保存pc值以便使用
            if key not in ['interval', '$0']:
                if 'f' in key:
                    assembly_code.append(f"    fld {key}, {8 * offset}(t3)  # Load {key}")
                    data_section.append(f"    .dword {value}  # {key}")
                elif 'm' in key[:2]:
                    # assembly_code.append(f"    ld t4, {8 * offset}(t3)  # Load {key} to t4")
                    # assembly_code.append(f"    csrw {key}, t4  # Move from t4 to {key}")
                    # data_section.append(f"    .dword {value}  # {key}")    
                    continue
                else:
                    if(key == "t3"):
                        # assembly_code.append(f"    la t3, Init_data_{i}  # Load address of Init_data_{i} once again")
                        data_section.append(f"    .dword {value}  # {key}")
                        t3_offset = offset
                        offset += 1
                        continue

                    if key == 'pc':
                        pc_value = (value)  # 保存pc值以便使用
                        pc_offset = offset
                        offset += 1
                        data_section.append(f"    .dword {value}  # {key}")
                        continue

                    assembly_code.append(f"    ld {key}, {8 * offset}(t3)  # Load {key}")
                    data_section.append(f"    .dword {value}  # {key}")
                    
                
                offset += 1
        
        

        
        if pc_value is not None:
            assembly_code.append("    sd t4, -80(sp)")
            # assembly_code.append("    sd t1, -88(sp)")
            assembly_code.append(f"    ld t4, {8 * pc_offset}(t3)  # Load pc")
            assembly_code.append("    csrw mepc, t4")


            #清除中断后需要再打开mstatus的mie吗
            # assembly_code.append("    li t4, 0xc200004")
            # assembly_code.append("    lw t1, 0(t4)")
            # assembly_code.append("    sw t1, 0(t4)")

            assembly_code.append("    ld t4, -80(sp)")
            # assembly_code.append("    ld t1, -88(sp)")

            # assembly_code.append("    sd t1, 0(sp)")
            # assembly_code.append("    sd t0, 8(sp)")
            # assembly_code.append("    li t1, 0x88")
            # assembly_code.append("    or t0, t0, t1")
            # assembly_code.append("    csrw mstatus, t0") 

            # assembly_code.append("    ld t1, 0(sp)")
            # assembly_code.append("    ld t0, 8(sp)")
            assembly_code.append(f"    ld t3, {8 * t3_offset}(t3)  # Load t3")
        
        assembly_code.append("    mret")  # 添加mret指令







    # 补充Simpoint Phase
    random_interval = parsed_data[0]
    assembly_code.append(f"# Simpoint Phase")
    assembly_code.append(".align 3")
    assembly_code.append(f"Simpoint_Phase_Context:")
    assembly_code.append(f"    la t3, Simpoint_data")
    data_section.append(f".align 9\nSimpoint_data:")


    offset = 0
    pc_value = None  # 默认情况下，pc值为空
    t3_offset = 0
    pc_offset = 0

    for key, value in random_interval.items():
        # if key == 'pc':
        #     pc_value = (value)  # 保存pc值以便使用
        if key not in ['interval', '$0']:
            if 'f' in key:
                assembly_code.append(f"    fld {key}, {8 * offset}(t3)  # Load {key}")
                data_section.append(f"    .dword {value}  # {key}")
            elif 'm' in key[:2]:
                continue
            else:
                if(key == "t3"):
                    # assembly_code.append(f"    la t3, Init_data_{i}  # Load address of Init_data_{i} once again")
                    data_section.append(f"    .dword {value}  # {key}")
                    t3_offset = offset
                    offset += 1
                    continue
                if key == 'pc':
                        pc_value = (value)  # 保存pc值以便使用
                        pc_offset = offset
                        offset += 1
                        data_section.append(f"    .dword {value}  # {key}")
                        continue
                assembly_code.append(f"    ld {key}, {8 * offset}(t3)  # Load {key}")
                data_section.append(f"    .dword {value}  # {key}")

            offset += 1
        
    
        
    if pc_value is not None:
        assembly_code.append("    sd t4, -80(sp)")
        assembly_code.append(f"    ld t4, {8 * pc_offset}(t3)  # Load pc")
        assembly_code.append("    csrw mepc, t4")
        assembly_code.append("    ld t4, -80(sp)")
        assembly_code.append(f"    ld t3, {8 * t3_offset}(t3)  # Load t3")
    
    assembly_code.append("    mret")  # 添加mret指令
    # data_section.append(f".align 4\nbuffer:\n    .space 32768") # 分配32KB的空间供缓存操作使用 -- 0x8000
    # 结合代码和数据段
    full_assembly = "\n".join(assembly_code + data_section)
    with open("output/Interval_init.S", 'w') as output_file:
        output_file.write(full_assembly)
        output_file.write("\n")





def main(interval_outfile_path):
    parsed_intervals = parse_riscv_state(interval_outfile_path)
    generate_riscv_assembly(parsed_intervals)


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python3 script.py <interval_file>")
        sys.exit(1)
    main(sys.argv[1])
