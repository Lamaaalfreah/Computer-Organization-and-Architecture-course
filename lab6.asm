
.data 
Array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 
length: .word 20 
sum: .word 0 
average: .word 0 

.text 
main:
la $t0,Array 
li $t1,0 #i 
li $t2,20 
li $t3,0 #result of sum 

loop:
lw $t4, ($t0)
add $t3,$t3,$t4 
add $t1,$t1,1 
add $t0,$t0,4 # go to next num

bne $t1, $t2,loop 
div $t7,$t3,$t2 #result of avg 

li $v0, 10 
syscall