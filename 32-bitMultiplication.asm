org 100h
MOV DI, 2500h
MOV AX, 98ABh
MOV BX, 76CDh
MOV [DI], BX
MOV [DI+2], AX 
MOV DI, 2508h
MOV AX, 54EFh
MOV BX, 32FFh
MOV [DI], BX
MOV [DI+2], AX 


MOV DI, 2500h
MOV BX, [DI]
MOV DI, 2508h
MOV AX, [DI]
MUL BX
MOV SI,2520h
MOV [SI], AX
MOV CX, DX


MOV DI, 250Ah
MOV AX, [DI]
MUL BX
ADD AX, CX
MOV [SI+2], AX
MOV [SI+4], DX


MOV DI, 2502h
MOV BX, [DI]
MOV DI, 2508h
MOV AX, [DI]
MUL BX
MOV SI, 2532h
MOV [SI], AX
MOV CX, DX


MOV DI, 250Ah
MOV AX, [DI]
MUL BX
ADD AX, CX
MOV [SI+2], AX
MOV [SI+4], DX


MOV CX, 8h
MOV DI, 2517h
MOV SI, 2527h

ADDI:
MOV DX, 0h
MOV AX, [SI]
ADD SI, 10h
MOV BX, [SI]
ADD AX, BX
SUB SI, 10h
ADD AX, DX
MOV [DI], AX
DEC DI
DEC SI
LOOP ADDI




ret
