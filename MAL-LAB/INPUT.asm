
.MODEL SMALL
.STACK 100H
.DATA
 TEMP DB ?
 MAIN PROC
    MOV AH,1 ;input
    INT 21H
    MOV TEMP,AL
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,TEMP
    INT 21H
    MAIN ENDP
 END MAIN



