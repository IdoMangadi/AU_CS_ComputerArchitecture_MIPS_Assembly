addi $s1, $0, 1

addi $s2, $0, 0x10011020

addi $t0, $0, 14 

loop:
	
	sw $s1, 0($s2)
	
	addi $s1, $s1, 2
	
	addi $s2, $s2, 4 
	
	sub $t0, $t0, 1
	
bgez $t0, loop	