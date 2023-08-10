
add $t2, $0, $s1
addi $t1, $0, 0

addi $s4, $0, 0

addi $t0, $0, 0


loop:
	lw $s3, 0($t2)
	
	mult $s3, $s3
	
	mfhi $s4
	
	beq $0, $s4, loop2
		addi $t0, $t0, 1
	
	loop2:
	addi $s4, $0, 0
	addi $t2, $t2, 4
	addi $t1, $t1, 1
	
	bne $t1, $s2, loop

	
	
	