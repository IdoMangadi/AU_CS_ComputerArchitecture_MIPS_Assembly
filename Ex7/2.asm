addi $s1, $0, 1    

addi $s2, $0, 1   
addi $t7, $0, -1 
mul $s2, $s2, $t7

addi $s3, $0, 1    
sll $s3, $s3, 9

addi $t0, $0, 0x9
addi $s5, $0, 0

loop:
	mul $t1, $s1, $s2
	
	mul $t1, $t1, $s3
	
	add $s5, $s5, $t1
	
	sll $s1, $s1, 2
	mul $s2, $s2, $t7
	srl $s3, $s3, 1
	
	subi $t0, $t0, 1

bgez $t0, loop	

