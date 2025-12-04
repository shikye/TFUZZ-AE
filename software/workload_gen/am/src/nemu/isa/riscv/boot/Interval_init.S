.section .init
.globl Init_table
.globl Simpoint_Phase_Context
Init_table:
    la t0, Init_counter
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)
    # Depending on the value of Init_counter, jump to the appropriate interval
    li t2, 1
    beq t1, t2, Init_interval_0
    li t2, 2
    beq t1, t2, Init_interval_1
    li t2, 3
    beq t1, t2, Init_interval_2
    li t2, 4
    beq t1, t2, Init_interval_3
    li t2, 5
    beq t1, t2, Init_interval_4
    li t2, 6
    beq t1, t2, Init_interval_5
    li t2, 7
    beq t1, t2, Init_interval_6
    li t2, 8
    beq t1, t2, Init_interval_7
    li t2, 9
    beq t1, t2, Init_interval_8
    li t2, 10
    beq t1, t2, Init_interval_9
    li t2, 11
    beq t1, t2, Init_interval_10
    li t2, 12
    beq t1, t2, Init_interval_11
    li t2, 13
    beq t1, t2, Init_interval_12
    li t2, 14
    beq t1, t2, Init_interval_13
    li t2, 15
    beq t1, t2, Init_interval_14
    li t2, 16
    beq t1, t2, Init_interval_15
    li t2, 17
    beq t1, t2, Init_interval_16
    li t2, 18
    beq t1, t2, Init_interval_17
    li t2, 19
    beq t1, t2, Init_interval_18
    li t2, 20
    beq t1, t2, Init_interval_19
    li t2, 21
    beq t1, t2, Init_interval_20
    li t2, 22
    beq t1, t2, Init_interval_21
    li t2, 23
    beq t1, t2, Init_interval_22
    li t2, 24
    beq t1, t2, Init_interval_23
    li t2, 25
    beq t1, t2, Init_interval_24
    li t2, 26
    beq t1, t2, Init_interval_25
    li t2, 27
    beq t1, t2, Init_interval_26
    li t2, 28
    beq t1, t2, Init_interval_27
    li t2, 29
    beq t1, t2, Init_interval_28
    li t2, 30
    beq t1, t2, Init_interval_29
    li t2, 31
    beq t1, t2, Init_interval_30
    li t2, 32
    beq t1, t2, Init_interval_31
    li t2, 33
    beq t1, t2, Init_interval_32
    li t2, 34
    beq t1, t2, Init_interval_33
    li t2, 35
    beq t1, t2, Init_interval_34
    li t2, 36
    beq t1, t2, Init_interval_35
    li t2, 37
    beq t1, t2, Init_interval_36
    li t2, 38
    beq t1, t2, Init_interval_37
    li t2, 39
    beq t1, t2, Init_interval_38
    li t2, 40
    beq t1, t2, Init_interval_39
    li t2, 41
    beq t1, t2, Init_interval_40
    li t2, 42
    beq t1, t2, Init_interval_41
    li t2, 43
    beq t1, t2, Init_interval_42
    li t2, 44
    beq t1, t2, Init_interval_43
    li t2, 45
    beq t1, t2, Init_interval_44
    li t2, 46
    beq t1, t2, Init_interval_45
# Interval 4212
.align 3
Init_interval_0:
    la t3, Init_data_0  # Load address of Init_data_0 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 5737
.align 3
Init_interval_1:
    la t3, Init_data_1  # Load address of Init_data_1 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 7103
.align 3
Init_interval_2:
    la t3, Init_data_2  # Load address of Init_data_2 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 8110
.align 3
Init_interval_3:
    la t3, Init_data_3  # Load address of Init_data_3 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 28681
.align 3
Init_interval_4:
    la t3, Init_data_4  # Load address of Init_data_4 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 73522
.align 3
Init_interval_5:
    la t3, Init_data_5  # Load address of Init_data_5 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 89513
.align 3
Init_interval_6:
    la t3, Init_data_6  # Load address of Init_data_6 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 102908
.align 3
Init_interval_7:
    la t3, Init_data_7  # Load address of Init_data_7 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 103727
.align 3
Init_interval_8:
    la t3, Init_data_8  # Load address of Init_data_8 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 103729
.align 3
Init_interval_9:
    la t3, Init_data_9  # Load address of Init_data_9 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 105758
.align 3
Init_interval_10:
    la t3, Init_data_10  # Load address of Init_data_10 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 105806
.align 3
Init_interval_11:
    la t3, Init_data_11  # Load address of Init_data_11 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 216233
.align 3
Init_interval_12:
    la t3, Init_data_12  # Load address of Init_data_12 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 222541
.align 3
Init_interval_13:
    la t3, Init_data_13  # Load address of Init_data_13 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 222960
.align 3
Init_interval_14:
    la t3, Init_data_14  # Load address of Init_data_14 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 252958
.align 3
Init_interval_15:
    la t3, Init_data_15  # Load address of Init_data_15 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 339239
.align 3
Init_interval_16:
    la t3, Init_data_16  # Load address of Init_data_16 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 369584
.align 3
Init_interval_17:
    la t3, Init_data_17  # Load address of Init_data_17 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 379705
.align 3
Init_interval_18:
    la t3, Init_data_18  # Load address of Init_data_18 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 383271
.align 3
Init_interval_19:
    la t3, Init_data_19  # Load address of Init_data_19 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 383466
.align 3
Init_interval_20:
    la t3, Init_data_20  # Load address of Init_data_20 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 385979
.align 3
Init_interval_21:
    la t3, Init_data_21  # Load address of Init_data_21 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 385995
.align 3
Init_interval_22:
    la t3, Init_data_22  # Load address of Init_data_22 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 387343
.align 3
Init_interval_23:
    la t3, Init_data_23  # Load address of Init_data_23 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 392409
.align 3
Init_interval_24:
    la t3, Init_data_24  # Load address of Init_data_24 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 394528
.align 3
Init_interval_25:
    la t3, Init_data_25  # Load address of Init_data_25 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 395989
.align 3
Init_interval_26:
    la t3, Init_data_26  # Load address of Init_data_26 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 397477
.align 3
Init_interval_27:
    la t3, Init_data_27  # Load address of Init_data_27 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 399611
.align 3
Init_interval_28:
    la t3, Init_data_28  # Load address of Init_data_28 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 401187
.align 3
Init_interval_29:
    la t3, Init_data_29  # Load address of Init_data_29 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 409251
.align 3
Init_interval_30:
    la t3, Init_data_30  # Load address of Init_data_30 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 414882
.align 3
Init_interval_31:
    la t3, Init_data_31  # Load address of Init_data_31 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 434875
.align 3
Init_interval_32:
    la t3, Init_data_32  # Load address of Init_data_32 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 435117
.align 3
Init_interval_33:
    la t3, Init_data_33  # Load address of Init_data_33 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 435384
.align 3
Init_interval_34:
    la t3, Init_data_34  # Load address of Init_data_34 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 437313
.align 3
Init_interval_35:
    la t3, Init_data_35  # Load address of Init_data_35 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 440713
.align 3
Init_interval_36:
    la t3, Init_data_36  # Load address of Init_data_36 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 441398
.align 3
Init_interval_37:
    la t3, Init_data_37  # Load address of Init_data_37 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 444505
.align 3
Init_interval_38:
    la t3, Init_data_38  # Load address of Init_data_38 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514544
.align 3
Init_interval_39:
    la t3, Init_data_39  # Load address of Init_data_39 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514553
.align 3
Init_interval_40:
    la t3, Init_data_40  # Load address of Init_data_40 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514599
.align 3
Init_interval_41:
    la t3, Init_data_41  # Load address of Init_data_41 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514650
.align 3
Init_interval_42:
    la t3, Init_data_42  # Load address of Init_data_42 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514687
.align 3
Init_interval_43:
    la t3, Init_data_43  # Load address of Init_data_43 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514801
.align 3
Init_interval_44:
    la t3, Init_data_44  # Load address of Init_data_44 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Interval 514881
.align 3
Init_interval_45:
    la t3, Init_data_45  # Load address of Init_data_45 once
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
# Simpoint Phase
.align 3
Simpoint_Phase_Context:
    la t3, Simpoint_data
    ld ra, 8(t3)  # Load ra
    ld sp, 16(t3)  # Load sp
    ld gp, 24(t3)  # Load gp
    ld tp, 32(t3)  # Load tp
    ld t0, 40(t3)  # Load t0
    ld t1, 48(t3)  # Load t1
    ld t2, 56(t3)  # Load t2
    ld s0, 64(t3)  # Load s0
    ld s1, 72(t3)  # Load s1
    ld a0, 80(t3)  # Load a0
    ld a1, 88(t3)  # Load a1
    ld a2, 96(t3)  # Load a2
    ld a3, 104(t3)  # Load a3
    ld a4, 112(t3)  # Load a4
    ld a5, 120(t3)  # Load a5
    ld a6, 128(t3)  # Load a6
    ld a7, 136(t3)  # Load a7
    ld s2, 144(t3)  # Load s2
    ld s3, 152(t3)  # Load s3
    ld s4, 160(t3)  # Load s4
    ld s5, 168(t3)  # Load s5
    ld s6, 176(t3)  # Load s6
    ld s7, 184(t3)  # Load s7
    ld s8, 192(t3)  # Load s8
    ld s9, 200(t3)  # Load s9
    ld s10, 208(t3)  # Load s10
    ld s11, 216(t3)  # Load s11
    ld t4, 232(t3)  # Load t4
    ld t5, 240(t3)  # Load t5
    ld t6, 248(t3)  # Load t6
    fld ft0, 256(t3)  # Load ft0
    fld ft1, 264(t3)  # Load ft1
    fld ft2, 272(t3)  # Load ft2
    fld ft3, 280(t3)  # Load ft3
    fld ft4, 288(t3)  # Load ft4
    fld ft5, 296(t3)  # Load ft5
    fld ft6, 304(t3)  # Load ft6
    fld ft7, 312(t3)  # Load ft7
    fld fs0, 320(t3)  # Load fs0
    fld fs1, 328(t3)  # Load fs1
    fld fa0, 336(t3)  # Load fa0
    fld fa1, 344(t3)  # Load fa1
    fld fa2, 352(t3)  # Load fa2
    fld fa3, 360(t3)  # Load fa3
    fld fa4, 368(t3)  # Load fa4
    fld fa5, 376(t3)  # Load fa5
    fld fa6, 384(t3)  # Load fa6
    fld fa7, 392(t3)  # Load fa7
    fld fs2, 400(t3)  # Load fs2
    fld fs3, 408(t3)  # Load fs3
    fld fs4, 416(t3)  # Load fs4
    fld fs5, 424(t3)  # Load fs5
    fld fs6, 432(t3)  # Load fs6
    fld fs7, 440(t3)  # Load fs7
    fld fs8, 448(t3)  # Load fs8
    fld fs9, 456(t3)  # Load fs9
    fld fs10, 464(t3)  # Load fs10
    fld fs11, 472(t3)  # Load fs11
    fld ft8, 480(t3)  # Load ft8
    fld ft9, 488(t3)  # Load ft9
    fld ft10, 496(t3)  # Load ft10
    fld ft11, 504(t3)  # Load ft11
    sd t4, -80(sp)
    ld t4, 0(t3)  # Load pc
    csrw mepc, t4
    ld t4, -80(sp)
    ld t3, 224(t3)  # Load t3
    mret
.section .interval,"aw",@progbits
.align 3
Init_counter: .word 0
temp_data: .word 0
 .word 0
 .word 0

.align 9
Init_data_0:
    .dword 0x10000297c  # pc
    .dword 0x1000029a8  # ra
    .dword 0x100102f10  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x10012c694  # t1
    .dword 0x2  # t2
    .dword 0xc04e  # s0
    .dword 0x100103008  # s1
    .dword 0x3d113e0f  # a0
    .dword 0xa5a5  # a1
    .dword 0xc050  # a2
    .dword 0x3ce049ec  # a3
    .dword 0x10012d7ec  # a4
    .dword 0x100132de8  # a5
    .dword 0x100133140  # a6
    .dword 0x37ef33e8  # a7
    .dword 0xa9fb  # s2
    .dword 0x100103000  # s3
    .dword 0xc050  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_1:
    .dword 0x1000029b0  # pc
    .dword 0x1000029a8  # ra
    .dword 0x100102df0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x1001474d4  # t1
    .dword 0x2  # t2
    .dword 0x11137  # s0
    .dword 0x100103008  # s1
    .dword 0x100103000  # a0
    .dword 0x11135  # a1
    .dword 0x11135  # a2
    .dword 0x597c78d7  # a3
    .dword 0x597c78d7  # a4
    .dword 0x1001474d4  # a5
    .dword 0x1001474e4  # a6
    .dword 0x597c78d7  # a7
    .dword 0x11135  # s2
    .dword 0x100103000  # s3
    .dword 0x11135  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_2:
    .dword 0x100003350  # pc
    .dword 0x100002abc  # ra
    .dword 0x100102f90  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x100164a7c  # t1
    .dword 0x2  # t2
    .dword 0x100080000  # s0
    .dword 0x100080610  # s1
    .dword 0x100103128  # a0
    .dword 0x100164a80  # a1
    .dword 0x10010312c  # a2
    .dword 0xffffffffddb2d7a6  # a3
    .dword 0xffffffff83b8a982  # a4
    .dword 0x10010312c  # a5
    .dword 0x1000193  # a6
    .dword 0x7fff660c  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_3:
    .dword 0x10000315c  # pc
    .dword 0x10000315c  # ra
    .dword 0x100102e30  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x100164a7c  # t1
    .dword 0x2  # t2
    .dword 0x0  # s0
    .dword 0xbd1  # s1
    .dword 0x0  # a0
    .dword 0x1de60  # a1
    .dword 0x7f  # a2
    .dword 0x0  # a3
    .dword 0x1001001a8  # a4
    .dword 0xfff  # a5
    .dword 0x1000193  # a6
    .dword 0x7fff660c  # a7
    .dword 0x1b4  # s2
    .dword 0x7780  # s3
    .dword 0x0  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_4:
    .dword 0x100002fc8  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f50  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x2  # t0
    .dword 0x310  # t1
    .dword 0x3  # t2
    .dword 0x100080110  # s0
    .dword 0x100080610  # s1
    .dword 0x187  # a0
    .dword 0x1000406ac  # a1
    .dword 0x100103000  # a2
    .dword 0x100103250  # a3
    .dword 0x94  # a4
    .dword 0x2  # a5
    .dword 0x8  # a6
    .dword 0x1000  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x1001000e0  # s7
    .dword 0x0  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x446  # t4
    .dword 0x1000  # t5
    .dword 0x1001000d8  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_5:
    .dword 0x100002f64  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f50  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x2  # t0
    .dword 0x36c  # t1
    .dword 0x3  # t2
    .dword 0x100080110  # s0
    .dword 0x100080610  # s1
    .dword 0x1b6  # a0
    .dword 0x1000406ac  # a1
    .dword 0x100103000  # a2
    .dword 0x1001030d0  # a3
    .dword 0x34  # a4
    .dword 0x100002f64  # a5
    .dword 0x8  # a6
    .dword 0x1000  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x1001000e0  # s7
    .dword 0x0  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x446  # t4
    .dword 0x1000  # t5
    .dword 0x1001000d8  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_6:
    .dword 0x100002ea0  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f50  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x2  # t0
    .dword 0xf4  # t1
    .dword 0x3  # t2
    .dword 0x100080110  # s0
    .dword 0x100080610  # s1
    .dword 0x7a  # a0
    .dword 0x1000406ac  # a1
    .dword 0x100103000  # a2
    .dword 0x100103258  # a3
    .dword 0x96  # a4
    .dword 0x1  # a5
    .dword 0x8  # a6
    .dword 0x1000  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x1001000e0  # s7
    .dword 0x0  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x446  # t4
    .dword 0x1000  # t5
    .dword 0x1001000d8  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_7:
    .dword 0x100000b78  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x0  # a0
    .dword 0x16c  # a1
    .dword 0x100112d14  # a2
    .dword 0x0  # a3
    .dword 0x1001180f0  # a4
    .dword 0x0  # a5
    .dword 0x100120264  # a6
    .dword 0x100118104  # a7
    .dword 0x10010b2cc  # s2
    .dword 0x59  # s3
    .dword 0x100117f98  # s4
    .dword 0x36  # s5
    .dword 0x100120100  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x7fffffd3  # t5
    .dword 0x1f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_8:
    .dword 0x100000a9c  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x0  # a0
    .dword 0x16c  # a1
    .dword 0x100111ef0  # a2
    .dword 0x0  # a3
    .dword 0x10010b29c  # a4
    .dword 0x0  # a5
    .dword 0x10011b444  # a6
    .dword 0x10010b2d4  # a7
    .dword 0x10010b174  # s2
    .dword 0x3  # s3
    .dword 0x10010b168  # s4
    .dword 0x10011b438  # s5
    .dword 0x0  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x7fffffd3  # t5
    .dword 0x1f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_9:
    .dword 0x100000abc  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x0  # a0
    .dword 0x16c  # a1
    .dword 0x1001132f8  # a2
    .dword 0x0  # a3
    .dword 0x10010b2d4  # a4
    .dword 0x0  # a5
    .dword 0x10011b464  # a6
    .dword 0x10010b2d4  # a7
    .dword 0x10010b194  # s2
    .dword 0xb  # s3
    .dword 0x10010b168  # s4
    .dword 0x10011b438  # s5
    .dword 0x0  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x7fffffd3  # t5
    .dword 0x1f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_10:
    .dword 0x100000af4  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x10010b168  # a0
    .dword 0x16c  # a1
    .dword 0x10011b5a4  # a2
    .dword 0x0  # a3
    .dword 0x10010b248  # a4
    .dword 0x10011b518  # a5
    .dword 0x0  # a6
    .dword 0x100113438  # a7
    .dword 0x10010b2d4  # s2
    .dword 0x5b  # s3
    .dword 0x1001132cc  # s4
    .dword 0x10012359c  # s5
    .dword 0x5b  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x7fffffd3  # t5
    .dword 0x1f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_11:
    .dword 0x100000b78  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x0  # a0
    .dword 0x16c  # a1
    .dword 0x10010b394  # a2
    .dword 0x0  # a3
    .dword 0x100113440  # a4
    .dword 0x0  # a5
    .dword 0x10011b664  # a6
    .dword 0x1001135a8  # a7
    .dword 0x10010b228  # s2
    .dword 0x30  # s3
    .dword 0x10011343c  # s4
    .dword 0x1  # s5
    .dword 0x10011b5a4  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x3fffffe9  # t5
    .dword 0x1e  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_12:
    .dword 0x100000b78  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x10010b2d4  # s0
    .dword 0x10011343c  # s1
    .dword 0x0  # a0
    .dword 0x16c  # a1
    .dword 0x10011315c  # a2
    .dword 0x0  # a3
    .dword 0x10011b42c  # a4
    .dword 0xffffffffe8000000  # a5
    .dword 0x100123598  # a6
    .dword 0x10011b434  # a7
    .dword 0x10010b2d0  # s2
    .dword 0x5a  # s3
    .dword 0x10011b2c8  # s4
    .dword 0x5a  # s5
    .dword 0x100123430  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x3  # t5
    .dword 0x2  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_13:
    .dword 0x100001730  # pc
    .dword 0x100001704  # ra
    .dword 0x100102f90  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x100100064  # s0
    .dword 0x100080610  # s1
    .dword 0x100103260  # a0
    .dword 0x100100108  # a1
    .dword 0x100103000  # a2
    .dword 0xffffffffffffffff  # a3
    .dword 0x4c4b4  # a4
    .dword 0x98  # a5
    .dword 0x5b  # a6
    .dword 0x100113438  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_14:
    .dword 0x100001778  # pc
    .dword 0x100004888  # ra
    .dword 0x100102fa0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x5b  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x100080220  # s0
    .dword 0x100080610  # s1
    .dword 0x1002342d4  # a0
    .dword 0x100103000  # a1
    .dword 0x989680  # a2
    .dword 0xffffffffffffffff  # a3
    .dword 0x100103068  # a4
    .dword 0x34d  # a5
    .dword 0x5b  # a6
    .dword 0x100113438  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_15:
    .dword 0x1000017e8  # pc
    .dword 0x100004888  # ra
    .dword 0x100102fa0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x1  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x100080220  # s0
    .dword 0x100080610  # s1
    .dword 0x2  # a0
    .dword 0x100103000  # a1
    .dword 0x989680  # a2
    .dword 0x124  # a3
    .dword 0x100103024  # a4
    .dword 0xfffffffffffffffa  # a5
    .dword 0xfffffffffffffffe  # a6
    .dword 0x4  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_16:
    .dword 0x100001864  # pc
    .dword 0x100004888  # ra
    .dword 0x100102fa0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x10011b438  # t0
    .dword 0x1  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x100080220  # s0
    .dword 0x100080610  # s1
    .dword 0x1  # a0
    .dword 0x100103000  # a1
    .dword 0x989681  # a2
    .dword 0x1196  # a3
    .dword 0xa83e  # a4
    .dword 0x0  # a5
    .dword 0x8282002  # a6
    .dword 0x18b6  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x10010b168  # t3
    .dword 0x1001132d0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_17:
    .dword 0x100003534  # pc
    .dword 0x100003518  # ra
    .dword 0x100102e90  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x0  # t0
    .dword 0x10  # t1
    .dword 0x10011b5a4  # t2
    .dword 0x100103000  # s0
    .dword 0x100102ef0  # s1
    .dword 0x100123020  # a0
    .dword 0x100100108  # a1
    .dword 0x100103000  # a2
    .dword 0x4000  # a3
    .dword 0x100143020  # a4
    .dword 0x100123ff8  # a5
    .dword 0x100102e90  # a6
    .dword 0x10  # a7
    .dword 0x100100118  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x4000  # s11
    .dword 0x100102ea8  # t3
    .dword 0x100102f00  # t4
    .dword 0x4  # t5
    .dword 0x1  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_18:
    .dword 0x100004cb4  # pc
    .dword 0x100004e90  # ra
    .dword 0x100102e60  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffffffffff  # t0
    .dword 0xe0000297f  # t1
    .dword 0x297e  # t2
    .dword 0x100103000  # s0
    .dword 0x100102ed8  # s1
    .dword 0x100103000  # a0
    .dword 0x297f  # a1
    .dword 0xe0a0d01  # a2
    .dword 0x3fff  # a3
    .dword 0x14bf8  # a4
    .dword 0x100117c18  # a5
    .dword 0x100129b00  # a6
    .dword 0x1  # a7
    .dword 0xe  # s2
    .dword 0x297f  # s3
    .dword 0x100102ec0  # s4
    .dword 0x1  # s5
    .dword 0x100102ed0  # s6
    .dword 0x100102f00  # s7
    .dword 0x2  # s8
    .dword 0x1  # s9
    .dword 0x11  # s10
    .dword 0x4000  # s11
    .dword 0x1e  # t3
    .dword 0x10025ff20  # t4
    .dword 0x4  # t5
    .dword 0x1  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_19:
    .dword 0x10000327c  # pc
    .dword 0x100000cf4  # ra
    .dword 0x100102f20  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffffffffff  # t0
    .dword 0x18  # t1
    .dword 0x3715  # t2
    .dword 0x80  # s0
    .dword 0x100103000  # s1
    .dword 0x20800  # a0
    .dword 0x100100108  # a1
    .dword 0x100103000  # a2
    .dword 0x100185450  # a3
    .dword 0x1001a5c50  # a4
    .dword 0x1001a4520  # a5
    .dword 0x1  # a6
    .dword 0x366c9858  # a7
    .dword 0x100100050  # s2
    .dword 0x100100048  # s3
    .dword 0x8200  # s4
    .dword 0x81  # s5
    .dword 0x102  # s6
    .dword 0x101  # s7
    .dword 0x100  # s8
    .dword 0x408  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x4  # t3
    .dword 0x100102ee8  # t4
    .dword 0x4  # t5
    .dword 0x1  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_20:
    .dword 0x100000d84  # pc
    .dword 0x100000d84  # ra
    .dword 0x100102f30  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffffffffff  # t0
    .dword 0x18  # t1
    .dword 0x3715  # t2
    .dword 0x100103000  # s0
    .dword 0x51  # s1
    .dword 0x4d01  # a0
    .dword 0x358  # a1
    .dword 0x125e4  # a2
    .dword 0x100080620  # a3
    .dword 0x269ec3  # a4
    .dword 0xffffffffcd0151f9  # a5
    .dword 0xd6  # a6
    .dword 0x4978  # a7
    .dword 0x100100050  # s2
    .dword 0x100100048  # s3
    .dword 0xa  # s4
    .dword 0x144  # s5
    .dword 0x51  # s6
    .dword 0x101  # s7
    .dword 0x100  # s8
    .dword 0x57  # s9
    .dword 0x80  # s10
    .dword 0x0  # s11
    .dword 0x4  # t3
    .dword 0x100102ee8  # t4
    .dword 0x4  # t5
    .dword 0x1  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_21:
    .dword 0x100001368  # pc
    .dword 0x100001474  # ra
    .dword 0x100102e80  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1001a6160  # t0
    .dword 0x10013b3e8  # t1
    .dword 0x1cf  # t2
    .dword 0xd  # s0
    .dword 0xffffffffffffffff  # s1
    .dword 0x1001884fc  # a0
    .dword 0x1001a5c50  # a1
    .dword 0x1001a6568  # a2
    .dword 0x1001a5e50  # a3
    .dword 0x100185048  # a4
    .dword 0x7  # a5
    .dword 0x1001a6158  # a6
    .dword 0x101  # a7
    .dword 0xa59  # s2
    .dword 0x10010f2f8  # s3
    .dword 0x1001a604c  # s4
    .dword 0x1001a5d8c  # s5
    .dword 0x100103000  # s6
    .dword 0x3  # s7
    .dword 0x1001a5d58  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x100103048  # s11
    .dword 0x34  # t3
    .dword 0x383a  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_22:
    .dword 0x100004728  # pc
    .dword 0x100001474  # ra
    .dword 0x100102cd0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1001a6160  # t0
    .dword 0x1001399c8  # t1
    .dword 0x3  # t2
    .dword 0x100103000  # s0
    .dword 0xffffffffffffffff  # s1
    .dword 0x0  # a0
    .dword 0xf7  # a1
    .dword 0x0  # a2
    .dword 0x0  # a3
    .dword 0x62f60  # a4
    .dword 0x101  # a5
    .dword 0x1001a6158  # a6
    .dword 0x100103000  # a7
    .dword 0x2  # s2
    .dword 0x62f6  # s3
    .dword 0x1001a5f0c  # s4
    .dword 0x0  # s5
    .dword 0x1001a5d58  # s6
    .dword 0x100103048  # s7
    .dword 0x100165fa8  # s8
    .dword 0x1001a6158  # s9
    .dword 0x1  # s10
    .dword 0x3f3f3f  # s11
    .dword 0x1001a6314  # t3
    .dword 0x3698  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_23:
    .dword 0x100003eac  # pc
    .dword 0x100001474  # ra
    .dword 0x100102cd0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100103048  # t0
    .dword 0x10011c268  # t1
    .dword 0x2a  # t2
    .dword 0x100103000  # s0
    .dword 0x0  # s1
    .dword 0x0  # a0
    .dword 0x0  # a1
    .dword 0x18  # a2
    .dword 0x60  # a3
    .dword 0x5  # a4
    .dword 0x1  # a5
    .dword 0x1001a6158  # a6
    .dword 0x1001a5d58  # a7
    .dword 0x0  # s2
    .dword 0x0  # s3
    .dword 0x1001a5ef8  # s4
    .dword 0x0  # s5
    .dword 0x1  # s6
    .dword 0x100118dd8  # s7
    .dword 0x100160e28  # s8
    .dword 0x1001a5db8  # s9
    .dword 0x15d9  # s10
    .dword 0x1001a5ffc  # s11
    .dword 0x1001a6300  # t3
    .dword 0x100103048  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_24:
    .dword 0x100003eac  # pc
    .dword 0x100001474  # ra
    .dword 0x100102cd0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100103048  # t0
    .dword 0x1001043a8  # t1
    .dword 0x5b  # t2
    .dword 0x100103000  # s0
    .dword 0x0  # s1
    .dword 0x0  # a0
    .dword 0x0  # a1
    .dword 0x6e  # a2
    .dword 0x1b8  # a3
    .dword 0x5  # a4
    .dword 0x1  # a5
    .dword 0x1001a6158  # a6
    .dword 0x1001a5d58  # a7
    .dword 0x0  # s2
    .dword 0x0  # s3
    .dword 0x1001a5e74  # s4
    .dword 0x0  # s5
    .dword 0x1  # s6
    .dword 0x1001663d8  # s7
    .dword 0x100143048  # s8
    .dword 0x1001a5f10  # s9
    .dword 0x6339  # s10
    .dword 0x1001a5fc8  # s11
    .dword 0x1001a627c  # t3
    .dword 0x100103048  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_25:
    .dword 0x100001368  # pc
    .dword 0x100001474  # ra
    .dword 0x100102e80  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1001a6160  # t0
    .dword 0x1001095a8  # t1
    .dword 0x1d1  # t2
    .dword 0x7f  # s0
    .dword 0xffffffffffffffff  # s1
    .dword 0x1001a1d8c  # a0
    .dword 0x1001a5c50  # a1
    .dword 0x1001a6568  # a2
    .dword 0x1001a5d74  # a3
    .dword 0x100185048  # a4
    .dword 0x3  # a5
    .dword 0x1001a6158  # a6
    .dword 0x101  # a7
    .dword 0x716d  # s2
    .dword 0x100175538  # s3
    .dword 0x1001a5f58  # s4
    .dword 0x1001a5f54  # s5
    .dword 0x100103000  # s6
    .dword 0x0  # s7
    .dword 0x1001a5d58  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x100103048  # s11
    .dword 0x1fc  # t3
    .dword 0x656  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_26:
    .dword 0x100004158  # pc
    .dword 0x100001474  # ra
    .dword 0x100102cd0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffffffffff  # t0
    .dword 0x100103000  # t1
    .dword 0x1001a5d58  # t2
    .dword 0x0  # s0
    .dword 0x9  # s1
    .dword 0x1  # a0
    .dword 0xffffffffffffffff  # a1
    .dword 0x8  # a2
    .dword 0xffffffffffffffff  # a3
    .dword 0x101  # a4
    .dword 0x0  # a5
    .dword 0x2  # a6
    .dword 0x100103048  # a7
    .dword 0x0  # s2
    .dword 0x100103000  # s3
    .dword 0x1001a5eec  # s4
    .dword 0x1  # s5
    .dword 0x65  # s6
    .dword 0x10015e3f8  # s7
    .dword 0x5b3b  # s8
    .dword 0x0  # s9
    .dword 0x1001a6034  # s10
    .dword 0x1001626e8  # s11
    .dword 0x194  # t3
    .dword 0xffffffffffffffff  # t4
    .dword 0xffffffffffffffff  # t5
    .dword 0xffffffffffffffff  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_27:
    .dword 0x10000420c  # pc
    .dword 0x100001474  # ra
    .dword 0x100102cd0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffffffffff  # t0
    .dword 0x100103000  # t1
    .dword 0x1001a5d58  # t2
    .dword 0x0  # s0
    .dword 0x1  # s1
    .dword 0x9  # a0
    .dword 0xffffffffffffffff  # a1
    .dword 0x8  # a2
    .dword 0xffffffffffffffff  # a3
    .dword 0x0  # a4
    .dword 0x0  # a5
    .dword 0x2  # a6
    .dword 0x100103048  # a7
    .dword 0x0  # s2
    .dword 0x100103000  # s3
    .dword 0x1001a5d60  # s4
    .dword 0x100103048  # s5
    .dword 0x1001a5d58  # s6
    .dword 0x100105738  # s7
    .dword 0x26f  # s8
    .dword 0x7343  # s9
    .dword 0x1001a60a0  # s10
    .dword 0x10010fa88  # s11
    .dword 0xffffffffffffffff  # t3
    .dword 0xffffffffffffffff  # t4
    .dword 0xffffffffffffffff  # t5
    .dword 0xffffffffffffffff  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_28:
    .dword 0x10000141c  # pc
    .dword 0x100001474  # ra
    .dword 0x100102e80  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1001a6160  # t0
    .dword 0x10010dca8  # t1
    .dword 0x9c  # t2
    .dword 0x100103000  # s0
    .dword 0xffffffffffffffff  # s1
    .dword 0x0  # a0
    .dword 0x81  # a1
    .dword 0x4  # a2
    .dword 0x8  # a3
    .dword 0x27900  # a4
    .dword 0x10018f298  # a5
    .dword 0x1001a6158  # a6
    .dword 0x100103000  # a7
    .dword 0x2  # s2
    .dword 0x2790  # s3
    .dword 0x1001a5e08  # s4
    .dword 0x0  # s5
    .dword 0x1001a5d58  # s6
    .dword 0x100103048  # s7
    .dword 0x10012a948  # s8
    .dword 0x1001a6158  # s9
    .dword 0x0  # s10
    .dword 0x3f3f3f  # s11
    .dword 0x1001a6210  # t3
    .dword 0xac6  # t4
    .dword 0x1  # t5
    .dword 0x3f3f3f  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_29:
    .dword 0x100002430  # pc
    .dword 0x100002430  # ra
    .dword 0x100102f70  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x8d  # t1
    .dword 0x8  # t2
    .dword 0x24d  # s0
    .dword 0x100100088  # s1
    .dword 0xb93  # a0
    .dword 0x100100108  # a1
    .dword 0x100103000  # a2
    .dword 0x100080620  # a3
    .dword 0x269ec3  # a4
    .dword 0xb937f9f  # a5
    .dword 0x8d  # a6
    .dword 0x101  # a7
    .dword 0x100100078  # s2
    .dword 0x1a  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x1001a5cd0  # t3
    .dword 0x100185450  # t4
    .dword 0x1  # t5
    .dword 0x100103048  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_30:
    .dword 0x100001eb8  # pc
    .dword 0x10000249c  # ra
    .dword 0x100102ed0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100113225  # t0
    .dword 0x100193808  # t1
    .dword 0xff  # t2
    .dword 0x1001074a0  # s0
    .dword 0x3  # s1
    .dword 0x100102f20  # a0
    .dword 0x6e766d  # a1
    .dword 0x225  # a2
    .dword 0x100103000  # a3
    .dword 0x100113f48  # a4
    .dword 0x100213fdf  # a5
    .dword 0x4000000  # a6
    .dword 0x2  # a7
    .dword 0x4  # s2
    .dword 0x2  # s3
    .dword 0x100113abf  # s4
    .dword 0x10000  # s5
    .dword 0x100113f46  # s6
    .dword 0x1002137fd  # s7
    .dword 0x100113808  # s8
    .dword 0x0  # s9
    .dword 0x100213811  # s10
    .dword 0x6d7373  # s11
    .dword 0x100213803  # t3
    .dword 0x225  # t4
    .dword 0x100213fe7  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_31:
    .dword 0x100001b70  # pc
    .dword 0x10000249c  # ra
    .dword 0x100102ed0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1001031b0  # t0
    .dword 0x100193808  # t1
    .dword 0x79  # t2
    .dword 0x75  # s0
    .dword 0x36  # s1
    .dword 0x100102f20  # a0
    .dword 0x10014f021  # a1
    .dword 0xd  # a2
    .dword 0x100103000  # a3
    .dword 0x10015304b  # a4
    .dword 0x100249ac2  # a5
    .dword 0x76400000  # a6
    .dword 0x3  # a7
    .dword 0x4  # s2
    .dword 0x1  # s3
    .dword 0x35  # s4
    .dword 0x10000  # s5
    .dword 0x100153049  # s6
    .dword 0x1002137fd  # s7
    .dword 0x100113808  # s8
    .dword 0x0  # s9
    .dword 0x100213811  # s10
    .dword 0x796775  # s11
    .dword 0x100213803  # t3
    .dword 0xd  # t4
    .dword 0x100249ad3  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_32:
    .dword 0x1000003ec  # pc
    .dword 0x1000003ac  # ra
    .dword 0x100102f20  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100213808  # t0
    .dword 0x100000  # t1
    .dword 0x9  # t2
    .dword 0x8236  # s0
    .dword 0x1  # s1
    .dword 0x3  # a0
    .dword 0x186a1  # a1
    .dword 0x34e  # a2
    .dword 0x1001c7288  # a3
    .dword 0x0  # a4
    .dword 0x4f5  # a5
    .dword 0x1000193  # a6
    .dword 0x0  # a7
    .dword 0x1001c6550  # s2
    .dword 0x100103000  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x1002488b4  # s10
    .dword 0x1002488c0  # s11
    .dword 0x100102f20  # t3
    .dword 0x100213804  # t4
    .dword 0x1002eceb2  # t5
    .dword 0x10000  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_33:
    .dword 0x10000020c  # pc
    .dword 0x1000001e0  # ra
    .dword 0x100102ef0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100213808  # t0
    .dword 0x100000  # t1
    .dword 0x9  # t2
    .dword 0x1001c6550  # s0
    .dword 0x100103008  # s1
    .dword 0x100289a70  # a0
    .dword 0x100100108  # a1
    .dword 0x1001c67a8  # a2
    .dword 0x100289a70  # a3
    .dword 0x100289adc  # a4
    .dword 0x100289ab0  # a5
    .dword 0x5  # a6
    .dword 0x96  # a7
    .dword 0x100207708  # s2
    .dword 0x1046b  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x1002488b4  # s10
    .dword 0x1002488c0  # s11
    .dword 0x100102f20  # t3
    .dword 0x100213804  # t4
    .dword 0x1002eceb2  # t5
    .dword 0x10000  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_34:
    .dword 0x100000274  # pc
    .dword 0x1000001e0  # ra
    .dword 0x100102ef0  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x100213808  # t0
    .dword 0x100000  # t1
    .dword 0x9  # t2
    .dword 0x1001c6550  # s0
    .dword 0x100103008  # s1
    .dword 0x100289a70  # a0
    .dword 0x100100108  # a1
    .dword 0x1002076fc  # a2
    .dword 0x9672  # a3
    .dword 0x106  # a4
    .dword 0x10022d0cc  # a5
    .dword 0x1001c680c  # a6
    .dword 0x1046b  # a7
    .dword 0x100207708  # s2
    .dword 0x1002076fc  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x1002488b4  # s10
    .dword 0x1002488c0  # s11
    .dword 0x100102f20  # t3
    .dword 0x100213804  # t4
    .dword 0x1002eceb2  # t5
    .dword 0x10000  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_35:
    .dword 0x1000006a0  # pc
    .dword 0x10000043c  # ra
    .dword 0x100102f20  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xa  # t0
    .dword 0x3  # t1
    .dword 0x9  # t2
    .dword 0x8236  # s0
    .dword 0x1  # s1
    .dword 0xb  # a0
    .dword 0x14  # a1
    .dword 0x10023a78c  # a2
    .dword 0x34a0  # a3
    .dword 0x1001f7998  # a4
    .dword 0x42dc  # a5
    .dword 0x100135254  # a6
    .dword 0x1002488b4  # a7
    .dword 0x1001c6550  # s2
    .dword 0x100103000  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x100207708  # s10
    .dword 0x1002488c0  # s11
    .dword 0x1  # t3
    .dword 0xa  # t4
    .dword 0x1  # t5
    .dword 0xa  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_36:
    .dword 0x100000508  # pc
    .dword 0x1000007b8  # ra
    .dword 0x100102f20  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xb6a  # t0
    .dword 0x31f5  # t1
    .dword 0x9  # t2
    .dword 0x8236  # s0
    .dword 0x1  # s1
    .dword 0x19a4c  # a0
    .dword 0x1002488b4  # a1
    .dword 0x160e  # a2
    .dword 0x2bb93  # a3
    .dword 0xe931  # a4
    .dword 0x10024e0f8  # a5
    .dword 0x56cf  # a6
    .dword 0x1002488b4  # a7
    .dword 0x1001c6550  # s2
    .dword 0x100103000  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x100212808  # s10
    .dword 0x1002488c0  # s11
    .dword 0x1002e08b4  # t3
    .dword 0x10466  # t4
    .dword 0xad9d  # t5
    .dword 0x4311  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_37:
    .dword 0x10000056c  # pc
    .dword 0x100000524  # ra
    .dword 0x100102f20  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xb6a  # t0
    .dword 0x129f3  # t1
    .dword 0x9  # t2
    .dword 0x8236  # s0
    .dword 0x2c61  # s1
    .dword 0xd  # a0
    .dword 0x1001756b0  # a1
    .dword 0x4302  # a2
    .dword 0x10026ec24  # a3
    .dword 0x10c08  # a4
    .dword 0xf4a6  # a5
    .dword 0x16a3  # a6
    .dword 0x3  # a7
    .dword 0x1001c6550  # s2
    .dword 0x100103000  # s3
    .dword 0x1a  # s4
    .dword 0x1046b  # s5
    .dword 0x100207708  # s6
    .dword 0x186a0  # s7
    .dword 0x100269198  # s8
    .dword 0x100164aa8  # s9
    .dword 0x1002488b4  # s10
    .dword 0x1002488c0  # s11
    .dword 0xc  # t3
    .dword 0x100140298  # t4
    .dword 0x6351  # t5
    .dword 0x4  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_38:
    .dword 0x100002548  # pc
    .dword 0x10000254c  # ra
    .dword 0x100102f80  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xb6a  # t0
    .dword 0x13ab  # t1
    .dword 0x9  # t2
    .dword 0xac  # s0
    .dword 0x1001000a0  # s1
    .dword 0x7874  # a0
    .dword 0x100100108  # a1
    .dword 0x100103000  # a2
    .dword 0x100080620  # a3
    .dword 0x989680  # a4
    .dword 0xac  # a5
    .dword 0x1000193  # a6
    .dword 0x3  # a7
    .dword 0x100100098  # s2
    .dword 0x100100108  # s3
    .dword 0x1  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x1002488b4  # t3
    .dword 0x1869f  # t4
    .dword 0x1046b  # t5
    .dword 0x19  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_39:
    .dword 0x100002794  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x50d49a31  # t0
    .dword 0x9896b8  # t1
    .dword 0xffffffffe1871103  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0x137  # a0
    .dword 0x3e  # a1
    .dword 0xffffffff9305cdb7  # a2
    .dword 0xffffffffa28342a2  # a3
    .dword 0xffffffffe43766ba  # a4
    .dword 0x7ff872b1  # a5
    .dword 0x2f  # a6
    .dword 0x1b2  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x1000405d8  # s5
    .dword 0x1000404d8  # s6
    .dword 0xffffffffa28342a2  # s7
    .dword 0xffffffffecf2a4fa  # s8
    .dword 0xffffffffbd3af235  # s9
    .dword 0x65b2d204  # s10
    .dword 0x0  # s11
    .dword 0xbf  # t3
    .dword 0xb00  # t4
    .dword 0x4985342b  # t5
    .dword 0x4c234bf0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_40:
    .dword 0x1000026a8  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x33dff8a3  # t0
    .dword 0x9896b8  # t1
    .dword 0xffffffffb435d28f  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0xbd  # a0
    .dword 0x28bd  # a1
    .dword 0xee28bd  # a2
    .dword 0x100102f40  # a3
    .dword 0x100102f2c  # a4
    .dword 0x100103dec  # a5
    .dword 0x2f  # a6
    .dword 0x1c0  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x1000405e0  # s5
    .dword 0x1000404e0  # s6
    .dword 0x33ac5ca4  # s7
    .dword 0x919579d  # s8
    .dword 0xffffffffeb86d391  # s9
    .dword 0xffffffffc2c955f2  # s10
    .dword 0x0  # s11
    .dword 0xc5  # t3
    .dword 0xdc0  # t4
    .dword 0xffffffffc3481ebf  # t5
    .dword 0x5019af69  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_41:
    .dword 0x100002794  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffff80f6adf2  # t0
    .dword 0x9896b8  # t1
    .dword 0xffffffffc7d7091a  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0xdd  # a0
    .dword 0x2c  # a1
    .dword 0xffffffff88c6ac07  # a2
    .dword 0xfffffffffeea8090  # a3
    .dword 0x421c0f93  # a4
    .dword 0xffffffff97fca030  # a5
    .dword 0x2f  # a6
    .dword 0x134  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x100040590  # s5
    .dword 0x100040490  # s6
    .dword 0xfffffffffeea8090  # s7
    .dword 0xf35f429  # s8
    .dword 0x4881d05  # s9
    .dword 0x5075f725  # s10
    .dword 0x0  # s11
    .dword 0x89  # t3
    .dword 0x1a80  # t4
    .dword 0x7218b9a3  # t5
    .dword 0x3ba6d0c2  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_42:
    .dword 0x100002730  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xfffffffff85bae0e  # t0
    .dword 0x9896b8  # t1
    .dword 0xffffffff90433510  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0x128  # a0
    .dword 0x3b  # a1
    .dword 0xe41d76b  # a2
    .dword 0x76651ea4  # a3
    .dword 0x4533df4c  # a4
    .dword 0xffffffffcae82837  # a5
    .dword 0x2f  # a6
    .dword 0x19d  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x1000405cc  # s5
    .dword 0x1000404cc  # s6
    .dword 0xa723ec9  # s7
    .dword 0xd  # s8
    .dword 0xffffffffa3014314  # s9
    .dword 0xffffffff94719cd3  # s10
    .dword 0x0  # s11
    .dword 0xb6  # t3
    .dword 0x28c0  # t4
    .dword 0xffffffffe72adfbd  # t5
    .dword 0xffffffffaba839f7  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_43:
    .dword 0x100002794  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffa115c7e6  # t0
    .dword 0x9896b8  # t1
    .dword 0xffffffff9978c0c8  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0x8d  # a0
    .dword 0x1c  # a1
    .dword 0xffffffff87295a49  # a2
    .dword 0xffffffffeb2204b5  # a3
    .dword 0x5f17ea96  # a4
    .dword 0xffffffff8099bd92  # a5
    .dword 0x2f  # a6
    .dword 0xc4  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x100040550  # s5
    .dword 0x100040450  # s6
    .dword 0xffffffffeb2204b5  # s7
    .dword 0xfffffffff9706349  # s8
    .dword 0x455a14ed  # s9
    .dword 0xfffffffff58d8dcc  # s10
    .dword 0x0  # s11
    .dword 0x59  # t3
    .dword 0x3340  # t4
    .dword 0x3ca52c60  # t5
    .dword 0xffffffff95222c5a  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_44:
    .dword 0x100002728  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffffe1c84530  # t0
    .dword 0x9896b8  # t1
    .dword 0xfffffffff67548f3  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0x74  # a0
    .dword 0x17  # a1
    .dword 0x7e98b1d  # a2
    .dword 0xffffffffb7f873e2  # a3
    .dword 0xfffffffff06e7c29  # a4
    .dword 0x47ee0f09  # a5
    .dword 0x2f  # a6
    .dword 0xa1  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x10004053c  # s5
    .dword 0x10004043c  # s6
    .dword 0xffffffffe548d00c  # s7
    .dword 0x177b0ef4  # s8
    .dword 0xffffffffd8a1e681  # s9
    .dword 0x23a7535b  # s10
    .dword 0x0  # s11
    .dword 0x4a  # t3
    .dword 0x5340  # t4
    .dword 0x2d082422  # t5
    .dword 0x462fdac5  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Init_data_45:
    .dword 0x100002794  # pc
    .dword 0x100004888  # ra
    .dword 0x100102f00  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0xffffffff9046b012  # t0
    .dword 0x9896b8  # t1
    .dword 0xfffffffffae7ea4f  # t2
    .dword 0x100103000  # s0
    .dword 0x100a8c680  # s1
    .dword 0x24  # a0
    .dword 0x7  # a1
    .dword 0x651a9dc6  # a2
    .dword 0xffffffffcb338848  # a3
    .dword 0x14e63dee  # a4
    .dword 0x7e35fcb9  # a5
    .dword 0x2f  # a6
    .dword 0x31  # a7
    .dword 0x40  # s2
    .dword 0xf  # s3
    .dword 0x1f  # s4
    .dword 0x1000404fc  # s5
    .dword 0x1000403fc  # s6
    .dword 0xffffffffcb338848  # s7
    .dword 0x191b5ef3  # s8
    .dword 0xffffffffa8304613  # s9
    .dword 0xffffffffbc10837d  # s10
    .dword 0x0  # s11
    .dword 0x1a  # t3
    .dword 0x69c0  # t4
    .dword 0x7c7a2f45  # t5
    .dword 0x11f3de61  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
.align 9
Simpoint_data:
    .dword 0x10000297c  # pc
    .dword 0x1000029a8  # ra
    .dword 0x100102f10  # sp
    .dword 0x0  # gp
    .dword 0x0  # tp
    .dword 0x1  # t0
    .dword 0x10012c694  # t1
    .dword 0x2  # t2
    .dword 0xc04e  # s0
    .dword 0x100103008  # s1
    .dword 0x3d113e0f  # a0
    .dword 0xa5a5  # a1
    .dword 0xc050  # a2
    .dword 0x3ce049ec  # a3
    .dword 0x10012d7ec  # a4
    .dword 0x100132de8  # a5
    .dword 0x100133140  # a6
    .dword 0x37ef33e8  # a7
    .dword 0xa9fb  # s2
    .dword 0x100103000  # s3
    .dword 0xc050  # s4
    .dword 0x40  # s5
    .dword 0x68  # s6
    .dword 0x100100110  # s7
    .dword 0x100080550  # s8
    .dword 0x0  # s9
    .dword 0x0  # s10
    .dword 0x0  # s11
    .dword 0x0  # t3
    .dword 0x0  # t4
    .dword 0x0  # t5
    .dword 0x0  # t6
    .dword 0xffffffff00000000  # ft0
    .dword 0xffffffff00000000  # ft1
    .dword 0xffffffff00000000  # ft2
    .dword 0xffffffff00000000  # ft3
    .dword 0xffffffff00000000  # ft4
    .dword 0xffffffff00000000  # ft5
    .dword 0xffffffff00000000  # ft6
    .dword 0xffffffff00000000  # ft7
    .dword 0xffffffff00000000  # fs0
    .dword 0xffffffff00000000  # fs1
    .dword 0xffffffff00000000  # fa0
    .dword 0xffffffff00000000  # fa1
    .dword 0xffffffff00000000  # fa2
    .dword 0xffffffff00000000  # fa3
    .dword 0xffffffff00000000  # fa4
    .dword 0xffffffff00000000  # fa5
    .dword 0xffffffff00000000  # fa6
    .dword 0xffffffff00000000  # fa7
    .dword 0xffffffff00000000  # fs2
    .dword 0xffffffff00000000  # fs3
    .dword 0xffffffff00000000  # fs4
    .dword 0xffffffff00000000  # fs5
    .dword 0xffffffff00000000  # fs6
    .dword 0xffffffff00000000  # fs7
    .dword 0xffffffff00000000  # fs8
    .dword 0xffffffff00000000  # fs9
    .dword 0xffffffff00000000  # fs10
    .dword 0xffffffff00000000  # fs11
    .dword 0xffffffff00000000  # ft8
    .dword 0xffffffff00000000  # ft9
    .dword 0xffffffff00000000  # ft10
    .dword 0xffffffff00000000  # ft11
