# Declare variables A, B, C, D, E, F, and y as integers
.data
A: .word 2
B: .word 2
C: .word 2
D: .word 2
E: .word 2
F: .word 2
y: .word 2

# Main program
.text
main:
    # Load values of A, B, C, D, E, and F into registers
    lw $t0, A
    lw $t1, B
    lw $t2, C
    lw $t3, D
    lw $t4, E
    lw $t5, F

    # Calculate A * B and store the result in $t6
    mul $t6, $t0, $t1

    # Calculate C * D and add the result to $t6
    mul $t7, $t2, $t3
    add $t6, $t6, $t7

    # Calculate E * F and add the result to $t6
    mul $t7, $t4, $t5
    add $t6, $t6, $t7

    # Multiply $t6 by 2 and store the result in y
    li $t7, 2
    mul $t6, $t6, $t7
    sw $t6, y

    # Exit program
    li $v0, 10
    syscall
