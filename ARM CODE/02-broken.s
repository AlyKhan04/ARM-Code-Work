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
		CMP R1, #11
		BEQ	spac
		CMP R1, R4
		BGT try
		SWI 0
		ADD R1, R1, #1
		B Loop

spac	CMP R0, #32
		BNE try
		SWI 0
enter 	MOV R0, #10
		SWI 0
		MOV R1, #0
		MOV R0, #0
		B 	Loop

new		SWI 1
try		CMP R0, #32
		BEQ enter
		CMP R0, #35
		BEQ end
		CMP R0, #10
		BEQ enter
		SWI 0
		B	new
	
end 	SWI 2
		
