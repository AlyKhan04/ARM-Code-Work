        B main

value   DEFW 0 ; Store the read number here
enterI  DEFB "Please enter your integer: ",0
newline DEFB "\n",0
errorM  DEFB "\nYou have entered a character instead of an integer!\n",0

        ALIGN
main    ADR     R0,enterI
        SWI     3
        MOV     R2,#10
loop    SWI     1 
        
        CMP     R0,#10
        BNE     STA   
        STR     R1,value  
        ADR     R0,newline
        SWI     3
        MOV     R0, R1
        SWI     4
        B       ifend
        
STA     CMP     R0, #48
        BLT     ERR
        CMP     R0, #57
        BGT     ERR
        SUB     R0,R0,#48
        SWI     4
        MLA     R1,R1,R2,R0
        B       loop

ERR     ADR     R0,errorM
        SWI     3
        MOV     R0,#0
        MOV     R1,#0
        ADR     R0,newline
        SWI     3
        ADR     R0,enterI
        SWI     3
        B       loop

ifend   MOV     R1,#0
        SWI     2       



