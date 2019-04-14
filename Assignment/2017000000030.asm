.MODEL SMALL
.STACK 100H
.DATA

NUM1 DB ?
NUM2 DB ?
NUM3 DB ?
MSG0 DB 'Enter your marks : $'
MSG1 DB 'Your grade is : 4.0 $'
MSG2 DB 'Your grade is : 3.0 $'
MSG3 DB 'Your grade is : 2.0 $'
MSG4 DB 'Your grade is : 1.0 $'
MSG5 DB 'Your grade is : 0.0 $'

.CODE

MAIN PROC
    
    
    ;INITIALIZE DATA SEGMENT
    MOV AX, @DATA
    MOV DS, AX 
    
    LOOP:
    MOV AH,9
    LEA DX,MSG0
    INT 21H       
    
    ;INPUT 1ST NUMBER
    MOV AH,1
    INT 21H
    MOV NUM1, AL 
       
    CMP NUM1,'a'
    JE EXIT     
    
    ;INPUT 2ND NUMBER
    INT 21H
    MOV NUM2, AL
    
    ;INPUT 3RD NUMBER
    INT 21H
    MOV NUM3, AL
    
    
    
    
    CMP NUM1,'1'
    JE LEVEL1
    
    CMP NUM2,'9'
    JE LEVEL1
    
    CMP NUM2,'8'
    JE LEVEL2
    
    CMP NUM2,'7'
    JE LEVEL3
    
    CMP NUM2,'6'
    JE LEVEL3
    
    CMP NUM2,'5'
    JE LEVEL4
    
    CMP NUM2,'4'
    JE LEVEL4
    
    JMP LEVEL5
           
    LEVEL1:
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H      
    JMP LOOP
    
    LEVEL2:
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H  
    
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    JMP LOOP
    
    LEVEL3:
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    JMP LOOP
    
    LEVEL4:
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H 
    
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    JMP LOOP
    
    LEVEL5:
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    
    MOV AH,9
    LEA DX,MSG5
    INT 21H  
    
    MOV AH,2
    MOV DL,0AH ;NEW LINE
    INT 21H
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    JMP LOOP
    
    EXIT:     
    ;RETURNING CONTROL TO OS
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    
    
   
    