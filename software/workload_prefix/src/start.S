.section entry, "ax"
.globl _start
.type _start, @function

#define MSTATUS_FS 0x00006000

.macro set_reg_zero reg_idx
  mv x\reg_idx, zero
.endm

# .macro set_freg_zero freg_idx
#   fmv.w.x f\freg_idx, zero
# .endm

.macro set_freg_zero freg_idx
  fmv.d.x f\freg_idx, zero
.endm

.macro init_regs
  .altmacro
  .set i, 1
  .rept 31
    set_reg_zero %i
    .set i, i+1
  .endr
.endm

.macro init_fregs
  .set i, 0
  .rept 32
    set_freg_zero %i
    .set i, i+1
  .endr
.endm

.macro end_iteration
    add x0, x0, x0
    add x0, x0, x0
    add x0, x0, x0
.endm


_start:
    la t0, interrupt_handler
    csrw mtvec, t0

    init_regs
    li a0, MSTATUS_FS
    csrrs x0, mstatus, a0
    csrwi fcsr, 0

    init_fregs

    j fuzz_main


interrupt_handler:
    csrr t0, mcause
    li t1, 0x2
    beq t1, t0, illegal_instruction_handler
    end_iteration

illegal_instruction_handler:
    csrr t0, mstatus
    srl t0, t0, 13
    andi t0, t0, 0x3
    beqz t0, enable_fs
    end_iteration
    
enable_fs:
    li a0, MSTATUS_FS
    csrrs x0, mstatus, a0
    mret                          # 返回原指令执行



fuzz_main:

