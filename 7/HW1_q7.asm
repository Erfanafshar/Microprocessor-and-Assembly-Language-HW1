;HW1
;question7
		;		set the memory contents
		LDR		R2,  =10
		LDR		R3, =0x8000000
		MOV		R0,#0
AGAIN	ADD		R0,R0,#10
		SUBS		R2,R2,#1
		STR		R0,[R3]
		ADD		R3,R3,#4
		BNE		AGAIN
		;		start
		MOV		R0, #0x8000000 ;set the start of memory
		MOV		R1, #0 ;set to 0 for new numbers
		MOV		R2, #0 ;set to 0 for calculating sum of number
		MOV		R3, #0 ;set to 0 to control the (for) loop
for		LDR		R1, [R0] ;load numbers in R1
		ADD		R2, R1, R2 ;add the new number to the sum(R2)
		ADD		R0, R0, #4 ;point to the next cell of memory
		MOV		R1, #0 ;set to 0
		ADD		R3, R3, #1 ;increase to detect the end of loop
		CMP		R3, #10 ;compare R3 with 10 to detect the end of the loop
		BMI		for
		
