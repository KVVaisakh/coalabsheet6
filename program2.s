	.data
	.text
	.globl main
main:
	li $t3,1
	li $t4,0
	bne $t3,0,jumpif
	addi $t4,1
	b skip
	jumpif:
	bne $t3,1,elseif
	addi $t4,-1
	b skip
	elseif:
	li $t4,100
	skip:
	move $a0,$t3
	li $v0,1
	syscall
	move $a0,$t4
	li $v0,1
	syscall
exit:
	li $v0,10
	syscall