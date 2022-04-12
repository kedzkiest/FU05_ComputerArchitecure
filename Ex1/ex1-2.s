	.data
N:      .word 10    # The length of Array
A:      .word 9     # A[0] = 9
        .word 3     # A[1] = 3
        .word 12
        .word 7
        .word 23
        .word 1
        .word 23
        .word 43
        .word 54    # A[8] = 54
        .word 31    # A[9] = 31
S:      .word 0
	
        .text
main:	or $t0, $0, $0 # i = 0
	lw $t1, N
	or $t2, $0, $0 # sum = 0
	la $t3, A

loop:	beq $t0, $t1, loopend
	lw $t4, 0($t3)
	add $t2, $t2, $t4
	addi $t0, $t0, 1
	addi $t3, $t3, 4
	j loop

loopend:	sw $t2, S

exit:	j exit
