	.data
	.text
	.globl main
main:
	li $t6,2
	li $t7,10
	li $t0,0

	loop:
		add $t0,$t0,$t7
		addi $t6,$t6,-1
		bne $t6,0,loop

	move $a0,$t0
	li $v0,1
	syscall
exit:
	li $v0,10
	syscall