

.MODEL SMALL
.STACK 100H
.DATA

MS1 DB 0DH,0AH,'ENTER A STRING: $'
MS2 DB 0DH,0AH,'JUST PRESS CAPS: $'
MSG DB 255 DUP('$')
NEWLINE DB 0DH,0AH,'$'

.CODE

.STARTUP
        PUSH AX
        MOV AH,AL
        MOV AL,AH
        XOR AX,AX
        
        LEA DX,MS1
        MOV AH,9
        INT 21H
        
        LEA SI,MSG
        MOV AH,1   
        
        
 READ:
     INT 21H
     MOV BL,AL
     
     CMP AL,0DH
     JE OUT_
     
     CMP AL,'a'
     JL LOWER
     
     CMP AL,'Z'
     JG UPPER   
     
     
 LOWER: 
        ADD AL,20H 
        MOV [SI],AL
        INC SI
        
        CMP BL,0DH
        JMP READ
                                     
                                     
UPPER:  
        SUB AL,20H
        MOV [SI],AL
        INC SI
        
        CMP BL,0DH
        JMP READ
        
OUT_:
       MOV AL,'$'
       MOV [SI],AL
       
       LEA DX,MS2
       MOV AH,9
       INT 21H   
       
       LEA DX,MSG
       MOV AH,9
       INT 21H
       
       MOV AH,4CH
       INT 21H   
       
       
.EXIT
       
        
END



