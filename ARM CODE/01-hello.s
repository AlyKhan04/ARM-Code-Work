		B main

hello	DEFB	"Hello World\n",0
Name	DEFB	"My name is Aly Khan\n",0
goodbye	DEFB	"Goodbye Universe\n",0

		ALIGN
main	ADR	R0, hello 	; put address of hello string in R0
		SWI	3         	; print it out

		ADR R0, Name	; adedd address of Name string in R0
		SWI 3			; print the tab string out

		ADR	R0, goodbye	; put address of goodbye string in R0
		SWI	3
	
		SWI	2         	; stop
