		B main
width	DEFW 12

; Use this buffer to store your words, there's space for words up to 32 bytes long
;
; When you store characters here, it will overwrite the values that already exist.
buffer	DEFB "01234567890123456789012345678901",0 

		ALIGN
main
		LDR R4, width
		MOV R0, #0
		MOV R1, #0
		MOV R2, #0
		ADR R5, buffer

Loop	SWI 1
		CMP R0, #10
		BEQ enter
		CMP R0, #32
		BEQ spac
		CMP R0, #35
		BEQ end
		STRB R0, [R5, R1]
		ADD R1,R1,#1
		ADD R2,R2,#1
		B 	Loop

spac	ADD R2,R2,#1
		CMP R2, R4
		BLE prin
		MOV R0, #10
		SWI 0
		MOV R2, #0
		ADD R2, R1, R2
prin	MOV R0, #0
		STRB R0, [R5, R1]
		ADR R0, buffer
		SWI 3
		MOV R0, #32
		SWI 0
		MOV R0, #0
		MOV R1, #0
		B Loop

enter	MOV R0, #10
		SWI 0
		MOV R0, #0
		MOV R1, #0
		MOV R2, #0
		B Loop

end		BL rubOut
		SWI 2

rubOut	MOV R0, #8
		SWI 0
		ADD R7,R7,#1
		MOV PC, R14