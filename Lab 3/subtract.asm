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
    SUB NUM1, 30H ; Convert from ASCII to number
    
    
    ;INPUT 2ND NUMBER
    INT 21H
    MOV NUM2, AL
    SUB NUM2, 30H  ; Convert from ASCII to number
    
    
    ;SUBTRACT
    MOV AL, NUM1
    SUB AL, NUM2
    
    
    ;OUTPUT
    MOV AH,2
    MOV DL, AL
    
    ADD DL, 30H  ;Convert from Number to ASCII
    
    INT 21H 
    
    
    ;RETURNING CONTROL TO OS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    
    
   
    