		B main
width	DEFW 12

		ALIGN
main	
; You will need to insert your code here
		LDR R4, width
		MOV R0,#0
		MOV R1,#0
;Loop functionality from last coursework

Loop	SWI 1
		CMP R0, #35
		BEQ end
		CMP R0, #10
		BEQ enter 
		CMP R1, R4
		BGE new
		SWI 0
		ADD R1, R1, #1
		B Loop

enter 	MOV R0, #10
		SWI 0
		MOV R1, #0
		MOV R0, #0
		B 	Loop

new		MOV R5,R0
		MOV R0, #10
		SWI 0
		MOV R0,R5
		SWI 0 
		MOV R0, #0
		MOV R1, #1
		B	Loop

end 	SWI 2

