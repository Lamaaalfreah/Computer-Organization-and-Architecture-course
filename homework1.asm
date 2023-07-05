.data
A: .word 0, 0, 0, 0, 0
B: .word 1, 2, 3, 4
C: .word 1, 2, 3, 4, 5, 6
.text
main:

la $t0, A # A starting address
la $t1, B # B starting address
la $t2, C # C starting address

lw $t3, 12($t1) # B[3]
lw $t4, 20($t2) # C[5]

add $t5, $t3, $t4
sw $t5, 16($t0) # A[4] = B[3] + C[5]

syscall