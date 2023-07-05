.data
array: .word 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

.text

main:
la $a0, array  
li $a1, 20

li $s0, 10
jal Sum

add $s1, $v0, $zero

li $v0, 10 # terminate
syscall # system call
.end main

Sum:
addi $sp, $sp, -4 #push
sw $s0, 0($sp)

li $t1, 0 #i			
li $v0, 0 #sum 	

Loop:
lw $s0, ($a0) #array[i]		
add $v0, $v0, $s0 	#sum= sum +array[i]	
add $t1, $t1, 1 	#i= i+1
add $a0, $a0, 4 	
blt $t1, $a1, Loop 	

lw $s0, 0($sp)    #pop
addi $sp, $sp, 4

jr $ra
.end Sum