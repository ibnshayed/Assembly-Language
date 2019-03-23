.MODEL SMALL
.STACK 100H
.DATA

NUM1 DB ?
NUM2 DB ?

.CODE

MAIN PROC
    
    
    ;INITIALIZE DATA SEGMENT
    MOV AX, @DATA
    MOV DS, AX 
    
    
    ;INPUT 1ST NUMBER
    MOV AH,1
    INT 21H
    MOV NUM1, AL
    SUB NUM1, 30H      ;Convert from ASCII to numbers
    
    
    ;INPUT 2ND NUMBER
    INT 21H
    MOV NUM2, AL
    SUB NUM2, 30H   ; Convert from ASCII to Number
    
    GCD:
    CMP NUM1,0
    JE DISPLAYNUM2
    
    CMP NUM2,0
    JE DISPLAYNUM1

    MOV AL,NUM1
    CMP AL,NUM2
    JE DISPLAYNUM1
    
    ;MOV AL,NUM1   
    CMP AL,NUM2
    JG LEVEL1
    
    
    MOV BL,NUM2
    SUB BL,NUM1
    MOV NUM2,BL
    JMP GCD
    
    
    LEVEL1:
    ;MOV AL,NUM1
    SUB AL,NUM2
    MOV NUM1,AL
    JMP GCD
       
       
       
       
       
    DISPLAYNUM1:
    MOV AH,2
    MOV DL,NUM1
    ADD DL,30H
    INT 21H
    JMP ENDP
    
    DISPLAYNUM2:
    MOV AH,2
    MOV DL,NUM2
    ADD DL,30H
    INT 21H
    
    
    ENDP:
    ;RETURNING CONTROL TO OS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    