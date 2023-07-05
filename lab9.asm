.data 
msg: .asciiz " Enter a character: "
displayMsg: .asciiz " The character is:  "


.text
main:
#call to print msg
li $v0, 4
la $a0, msg
syscall

jal loop

li $v0, 10
syscall

loop:
li $t0, 48
#read character
li $v0, 12
syscall

#call to read string
add $a0, $v0, $zero


#print character 
li $v0, 11
syscall

#end
beq $a0, $t0, end
j loop
 
end:  
jr $ra
