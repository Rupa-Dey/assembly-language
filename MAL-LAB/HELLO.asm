
;Hello world print program using assembly language

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,2
    MOV DL,"H"
    INT 21H
 MAIN ENDP
END MAIN




