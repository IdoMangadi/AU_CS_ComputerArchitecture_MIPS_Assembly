


fib:

	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	
	
	
	addi $a1, $a1, 1
	
	add $s0, $0, $a1
	
	addi $s1, $0, 0



	beq $s0, $0, end


	addi $t0, $0, 1
	
	addi $s0, $s0, -2 
	
	beq $s0, $0, end

    loop:
	
        add $v0, $s1, $t0
        add $s1, $0, $t0
        add $t0, $0, $v0


        addi $s0, $s0, -1
        bne $s0, $0, loop


    end:
	
        lw $ra, 0($sp)
        lw $s0, 4($sp)
        lw $s1, 8($sp)
        addi $sp, $sp, 12
		
	jr $ra  