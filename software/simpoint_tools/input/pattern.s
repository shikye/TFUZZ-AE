.section .text
Init_table:
    #Get Init_counter and plus 1
    la t0, Init_counter
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)

    #Depending on the value of Init_counter, jump to the appropriate interval

Init_interval_0:
    #Init_interval 0

Init_interval_1:
    #Init_interval 1


.section .data
Init_counter: .word 0

Init_data_0:

Init_data_1: