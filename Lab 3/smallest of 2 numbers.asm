.MODEL SMALL
.STACK 100H
.DATA

NUM1 DB ?
NUM2 DB ?

MSG1 DB 'THE FIRST NUMBER IS SMALLEST$' 
MSG2 DB 'THE SECOND NUMBER IS SMALLEST$'


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
    
    
    MOV AL, NUM1
    CMP AL, NUM2
    JGE ELSE 
    
    MOV AH,9
    LEA DX, MSG1
    INT 21H
    JMP END_IF
    
    
    ELSE: 
    MOV AH,9
    LEA DX, MSG2
    INT 21H
    
    
    END_IF:
    ;RETURNING CONTROL TO OS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    
    
   
    