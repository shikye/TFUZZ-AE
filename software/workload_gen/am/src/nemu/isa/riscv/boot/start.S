.section entry, "ax"
.globl _start
.type _start, @function

#define MSTATUS_FS 0x00006000

.macro set_reg_zero reg_idx
  mv x\reg_idx, zero
.endm

.macro set_freg_zero freg_idx
  fmv.w.x f\freg_idx, zero
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

_start:
  la t0, interrupt_handler
  csrw mtvec, t0

  # pmp config
  li t0, 0x40000000             # 设置 pmpaddr0 为 0x100012000
  csrw pmpaddr0, t0

  li t0, 0x40010000             # 设置 pmpaddr1 为 0x100012000
  csrw pmpaddr1, t0

  li t0, 0x40020000             # 设置 pmpaddr2 为 0x100012000
  csrw pmpaddr2, t0

  li t0, 0x50000000             # 设置 pmpaddr3 为 0x100012000
  csrw pmpaddr3, t0

  # 配置 PMP 权限
  li t0, 0b10001000              # pmp0cfg: 禁止 0x00000000 ~ 0x100000000（不可读不可写不可执行）
  li t1, 0b10001101              # pmp1cfg: 0x100000000 ~ 0x100012000 可读可执行 (PMP_TOR | PMP_R | PMP_X)
  li t2, 0b10001001              # pmp2cfg: 0x100012000 ~ 0x100014000 只读 (PMP_TOR | PMP_R)
  li t3, 0b10001011              # pmp3cfg: 0x100014000 ~ 0x140000000 可读可写 (PMP_TOR | PMP_R | PMP_W)

  # 组装 pmpcfg0
  slli t1, t1, 8                 # tempz2 左移 8 位
  slli t2, t2, 16                # tempz3 左移 16 位
  slli t3, t3, 24                # tempz4 左移 24 位
  add t0, t0, t1                 # tempz1 + tempz2
  add t0, t0, t2                 # tempz1 + tempz2 + tempz3
  add t0, t0, t3                 # tempz1 + tempz2 + tempz3 + tempz4

  csrw pmpcfg0, t0               # 设置 pmpcfg0

  init_regs

  mv s0, zero
  la sp, _stack_pointer
  li a0, MSTATUS_FS & (MSTATUS_FS >> 1)
  csrs mstatus, a0
  csrwi fcsr, 0
  

  # add for SimPoint==========
  # la t0, Init_table
  # csrw mtvec, t0
  # li t0, 0x800              # 将0x800（MEIE位的位掩码）加载到临时寄存器t0中
  # csrs mie, t0              # 设置mie寄存器的MEIE位
  # csrr t0, mstatus          # 读取当前mstatus寄存器的值到t0中
  # li t1, 0x88                # 将0x8（MIE位的位掩码）加载到临时寄存器t1中  需要写mpie
  # or t0, t0, t1             # 将MIE位设置为1
  # csrw mstatus, t0          # 写回mstatus寄存器


  # li t0, 0xC002000
  # li t1, 0x02
  # sw t1, 0(t0)

  # li t0, 0xC000004
  # li t1, 0x01
  # sw t1, 0(t0)
  # add for SimPoint==========


  init_fregs # init fregs after fp enable

  li t2, 2
  # for beforeSimPoint==========
  # li t0, 1
  # for beforeSimPoint==========

  # for afterSimPoint==========
  li t0, 0
  # for afterSimPoint==========
  beqz t0, Init_table
  beq t0, t2, Simpoint_Phase_Context


  jal _trm_init


interrupt_handler:
  addi sp, sp, -4
  sw t0, 0(sp)

  csrr t0, mepc
  addi t0, t0, 4
  csrw mepc, t0

  addi sp, sp, 4

  mret




