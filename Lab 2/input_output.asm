.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    
    ;TAKING INPUT FROM USER
    MOV AH, 1
    INT 21H   
    MOV BL, AL
    
    
 
    ;OUTPUT
    MOV AH, 2
    MOV DL, BL
    INT 21H 
    
    
    ;RETURNING CONTROL TO OS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

  
    