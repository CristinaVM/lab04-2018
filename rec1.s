        .data
    fin:    .asciiz "fin!"
        .text
    li a0 20
    li a1 40
    jal rec                 # What
    jal printIntNewline

    li a0 3
    li a1 81
    jal rec                 # does
    jal printIntNewline

    li a0 32
    li a1 16
    jal rec                 # rec
    jal printIntNewline

    li a0 15
    li a1 155
    jal rec                 # do?
    jal printIntNewline

    li a0 4
    la a1 fin
    ecall

    li a0 10                # End the program after running rec some times
    ecall

printIntNewline:
    mv a1 a0
    li a0 1
    ecall
    li a1 '\n'
    li a0 11
    ecall
    jr ra

rec:                    # 'rec' stands for recursive!
    addi sp sp -4
    sw ra 0(sp)
    
    beq a1 x0 skip
    rem t0 a0 a1        # a0 % a1
    mv a0 a1
    mv a1 t0
    jal rec
skip:
    
    lw ra 0(sp)
    addi sp sp 4
    jr ra