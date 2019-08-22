	.data
	.text
	.globl main
main:
	li $t0,0x10010000
	li $t1,3
	
	sw $t1,0($t0)
	lw $t2,0($t0)

	addi $t2,$t2,-1
	sw $t2,12($t0)

	lw $t3,0($t0)
	move $a0,$t3
	li $v0,1
	syscall

	lw $t3,12($t0)
	move $a0,$t3
	li $v0,1
	syscall
exit:
	li $v0,10
	syscall