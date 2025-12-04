import os

def hexstr_to_int(s):
    return int(s, 16)

def get_rm_bits(instruction):
    return (instruction >> 12) & 0b111

def get_opcode(instruction):
    return instruction & 0x7F

def get_funct3(instruction):
    return (instruction >> 12) & 0x7

def get_csr_addr(instruction):
    return (instruction >> 20) & 0xFFF

def get_rs1(instruction):
    return (instruction >> 15) & 0x1F

def is_write_to_frm(instruction):
    opcode = get_opcode(instruction)
    csr = get_csr_addr(instruction)
    funct3 = get_funct3(instruction)

    # SYSTEM 类型 CSR 指令，写 frm (csr = 0x002)
    if opcode == 0x73 and csr == 0x002:
        if funct3 in [0b001, 0b010, 0b011]:  # csrrw, csrrs, csrrc
            return True
    return False

def is_fp_instr_with_dyn_rm(instruction):
    opcode = get_opcode(instruction)
    rm = get_rm_bits(instruction)

    # 浮点运算通用 opcode = 0x53
    if opcode == 0x53 and rm == 0b111:
        return True
    return False

def analyze_file(file_path):
    instructions = []

    with open(file_path) as f:
        for line in f:
            line = line.strip()
            if '<=' not in line:
                continue
            try:
                value = int(line.split('<=')[-1].strip(), 16)
                instr = value & 0xFFFFFFFF  # 取低32位
                instructions.append(instr)
            except Exception:
                continue

    has_frm_write = any(is_write_to_frm(instr) for instr in instructions)
    has_fp_dyn_rm = any(is_fp_instr_with_dyn_rm(instr) for instr in instructions)

    return has_frm_write, has_fp_dyn_rm

def analyze_logs_directory(log_dir):
    summary = []

    for root, _, files in os.walk(log_dir):
        for file in files:
            path = os.path.join(root, file)
            frm, dyn = analyze_file(path)
            print(f"[{path}] → frm_written: {frm}, fp_dyn_rm: {dyn}")
            summary.append((path, frm, dyn))

    # 可以加统计
    print("\n=== Summary ===")
    total = len(summary)
    with_frm = sum(1 for _, f, _ in summary if f)
    with_dyn = sum(1 for _, _, d in summary if d)
    both = sum(1 for _, f, d in summary if f and d)
    print(f"Total files: {total}")
    print(f"Files with frm write: {with_frm}")
    print(f"Files with FP dyn rm: {with_dyn}")
    print(f"Files with both: {both}")

# 示例调用
analyze_logs_directory('logs')
