;HW1
;question4
		LDR		R1, =0b1001 ;input in R1
		LDR		R2, =0b11 ;number of rotations in R2
		ROR		R3, R1, R2 ;rotate the number in R1 , R2 time and set the result in R3