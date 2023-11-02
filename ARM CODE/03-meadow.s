
		B main

men		DEFB	" men",0
wtm		DEFB	" went to mow\n",0
Line2	DEFB	"Went to mow a meadow\n",0
oneman	DEFB	" man and his dog, Spot\n",0
comma	DEFB	", ",0

		ALIGN
main

	MOV	R0,#4
	SWI	4
	ADR	R0,men
	SWI	3
	ADR	R0,wtm
	SWI	3	

	ADR	R0,Line2
	SWI	3

	MOV	R0,#4
	SWI	4
	ADR	R0,men
	SWI	3
	ADR	R0,comma
	SWI 3
	MOV	R0,#3
	SWI	4
	ADR	R0,men
	SWI	3
	ADR	R0,comma
	SWI 3
	MOV	R0,#2
	SWI	4
	ADR	R0,men
	SWI	3
	ADR	R0,comma
	SWI 3
	MOV	R0,#1
	SWI	4
	ADR	R0,oneman
	SWI	3

	ADR	R0,Line2
	SWI 3
	

	SWI	2

	

