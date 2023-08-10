# a0 <-- i 
# a1 <-- adrr
# Note: I writed only the two functions without the main program that call them.



starngesum:
	
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	
	
	addi $s0, $0, 0
	
	addi $t7, $0, 0
	
	add $t5, $0, $a1
	
	for:
		lw $t2, 0($t5)
		
		add $t3, $t2, $t2
		add $t2, $t2, $t3
		
		sw $t2, 0($t5)
		addi $t5, $t5, 8
		
		add $s0, $s0, $t2
		
		subi $t7, $t7, 1
		addi $t7, $t7, 3
		
		sub $t6, $a0, $t7
		bgtz $t6, for
	
	add $a0, $0, $s0
	
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	jal multi
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	
	
	lw $s0, 0($sp)
	
	addi $sp, $sp, 4
	
	jr $ra
	
	
multi:
	
	addi $t0, $0, 12
	mult $a0, $t0
	mflo $v0

	
	jr $ra
	
