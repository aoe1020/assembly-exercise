DATA SEGMENT 
    ORG 0E000H          ;(1)
            
    ARRAY_BYTE LABEL BYTE
    ARRAY_WORD LABEL WORD       
    ARRAY DB 100 DUP(0)      ;(2)
DATA ENDS

STACK SEGMENT STACK
    ALIGN 16    
    DW 100H DUP(0)
STACK ENDS

CODE SEGMENT
    ASSUME CS:CODE DS:DATA   
    ORG 1000H
START:          
    MOV AX, DATA
    MOV DS, AX  
    MOV AX, STACK
    MOV SS, AX
    
    MOV AX, 4CH
    INT 21H
CODE ENDS
    END START