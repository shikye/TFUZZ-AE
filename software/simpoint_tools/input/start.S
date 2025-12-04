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


  # for beforeSimPoint==========
  # li t0, 1
  # for beforeSimPoint==========

  # for afterSimPoint==========
  li t0, 0
  # for afterSimPoint==========
  beqz t0, Init_table


  jal _trm_init
