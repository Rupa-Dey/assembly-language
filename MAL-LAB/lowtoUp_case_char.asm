;lower to upper character
.MODEL SMALL
.STACK 100H
.DATA
CR EQU 0DH
LF EQU OAH

MS1 DB 'ENTER A LOWER CASE LETTER $'
MS2 DB 0DH,0AH,'IN UPPER CASE: '
CHAR DB ?,'$'

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    ;PRINT USER PROMT
    
    LEA DX,MS1
    MOV AH,9
    INT 21H  
    
    ;INPUT A CHARCTER
    MOV AH,1
    INT 21H
    ;SUB AL,20H  ;upper case
    ADD AL,20H  ;lower case
    MOV CHAR,AL
    
    ;DISPLAY
    
    LEA DX,MS2
    MOV AH,9
    INT 21H
    
    ;DOS EXIT
    MOV AH,4CH
    INT 21H
    
    
    
    
    
    
    
    
    MAIN ENDP
END MAIN


