.data
prompt: .asciiz "Unrecognized input"
input: .space 1001 
string: .space 5
.text

main:
li $v0, 8						
la $a0, input						
li $a1, 1001						
syscall

la $t1, input						

li $s6, 0						
li $t4, 0						
li $t8, 0
li $t3, 1	

storing:
lb $t0, ($t1)
addi $t1, $t1, 1
beq $t0, 10, ender					
beq $t0, 0, ender
beq $t0, 32, storing					
beq $t0, 9, storing					

beq $t8, 1, error					
li $t8, 1

la $s1, string	

lb $t0, -1($t1)
sb $t0, 0($s1)						

lb $t0, 0($t1)
sb $t0, 1($s1)						

lb $t0, 1($t1)
sb $t0, 2($s1)																			