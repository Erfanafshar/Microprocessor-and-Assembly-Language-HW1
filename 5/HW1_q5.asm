;HW1
;question	5
		LDR		R0, =0x100 ;store first memory address in R0
		LDR		R1, =1 ;store first number in R1
for		STRB		R1,[R0] ;store numbers in R0 address
		add		R0,R0,#1 ;increase memory address
		add		R1,R1,#1 ;increase number
		cmp		R1,#10 ;compare R1 with 10 if (R1 == 10) means that 9 is in memory and it's time to finish the (for) loop
		BMI		for ; end of (for) loop
		
