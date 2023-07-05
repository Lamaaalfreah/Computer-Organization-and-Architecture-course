.data
A: .word 1, 2, 4, 5 
B: .word 3, 2, 4, 1 
Dotprod: .word 0  
 
.text  
main:  
la $s0,A  
la $s1, B  
li $s2,4 
li $s3,0  
li $s4,0  
L:  
lw $t1,0($s0) 
lw $t2,0($s1)  
mul $t3 , $t2 , $t1  
add $s3 , $s3 , $t3  
addi $s4,$s4,1  
beq $s4,$s2,Exit  
addi $s0 , $s0 , 4  
addi $s1 , $s1 , 4  
j L  
Exit :  
sw $s3,Dotprod  
li $v0 , 10  
syscall
