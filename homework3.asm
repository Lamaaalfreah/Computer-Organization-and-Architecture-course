# Procedure to search for a character in a char array
# Inputs: $a0 = address of the char array
#         $a1 = length of the array
#         $a2 = character to search for
# Output: $v0 = 1 if character was found, 0 otherwise
 
.data
array: .word A,B,C,D
char: .word 'A'

.text
main:
la $a0, array  
li $a1, 4 # array length
la $a2, char 

jal search_char

li $v0,10       
syscall

search_char:  # procedure label
li $t0,0      # initialize loop counter to 0

loop: 
lw $t1, 0($a0)
lw $t2, 0($a2)
beq $t1,$t2,found     # check if current element is equal to character we are searching for
addi $t0,$t0,1        # increment loop counter by 1 and go back to loop label
beq $t0,$a1,end_loop  # check if loop counter is equal to array length
addi $a0,$a0, 4
j loop        # jump back to loop label

found: 
li $v1,1      # set return value to 1 (character was found) and go to end_loop label
j end

end_loop:
li $v1,0      # set return value to 0 (character was not found) and exit procedure 
j end

end:
jr $ra        # return from procedure
