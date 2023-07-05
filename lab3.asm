.data
w1: .word 9
w2: .word 10

.text
main:
lw $t0, w1
lw $t1, w2

sll $t0, $t0, 4
or $t2, $t0, $t1

syscall