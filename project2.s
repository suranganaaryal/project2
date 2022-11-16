.data

input: .space 1001 
enter: .asciiz "\n"
# N = 26 + (X % 11), N(base) = 30
# M = N - 10, M = 20
.text

main:
li $v0, 8
la $a0, input
li $a1, 11
syscall

