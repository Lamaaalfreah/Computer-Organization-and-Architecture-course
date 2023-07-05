
.data 
msg: .asciiz "The result value is " 
Array: .word 1, 2, 3, 4, 5 
.text 
main:
li $v0, 4  #Call system to print msg
la $a0, msg
syscall 

li $a1, 5 
la $a0, Array 
jal sum 
add $a0, $v0, $zero 
li $v0, 1 
syscall 

li $v0,10 
syscall 

sum: 
addi  $sp, $sp,-4 
sw $s0,0($sp) 
add $t0, $zero,  $zero
add $t1, $zero,  $zero

loop: 
lw $s0, ($a0) 
add $t0, $s0, $t0 
addi $a0, $a0,4  
addi $t1, $t1,1 
bne $t1, $a1,loop 
add $v0, $t0, $zero 
lw $s0,0($sp) 
addi $sp, $sp,4 
jr $ra