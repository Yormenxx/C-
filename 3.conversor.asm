.MODEL SMALL
.STACK 100H
.DATA
    msg1  DB 'Ingrese un numero decimal (0-9): $'
    msg2  DB 13,10,'Equivalente binario: $'
    salto DB 13,10,'$'
    
.CODE
MAIN PROC
             MOV AX, @DATA
             MOV DS, AX

    ; Mostrar mensaje de entrada
             MOV AH, 09H
             LEA DX, msg1
             INT 21H

    ; Leer carácter del teclado
             MOV AH, 01H
             INT 21H
             SUB AL, '0'      ; ASCII -> valor numérico 0..9
             MOV BL, AL       ; Guardamos el número en BL

    ; Mostrar mensaje de salida
             MOV AH, 09H
             LEA DX, msg2
             INT 21H

    ;Usar registro independiente para la máscara
             MOV CH, 8        ; máscara inicial = 2^3 = 8 (bit más significativo)
             MOV CL, 4        ; 4 iteraciones para mostrar 4 bits

    BIN_LOOP:
             MOV AL, BL       ; AL = número original
             AND AL, CH       ; Verifica si el bit correspondiente está activo
             JZ  IMPR_0       ; Si resultado = 0, el bit es 0
    
    ; Bit es 1
             MOV DL, '1'
             JMP IMPR
    
    IMPR_0:  
    ; Bit es 0
             MOV DL, '0'
    
    IMPR:    
             MOV AH, 02H      ; Mostrar carácter en DL
             INT 21H

             SHR CH, 1        ; Desplaza máscara: 8->4->2->1
             DEC CL           ; Decrementa contador manualmente
             JNZ BIN_LOOP     ; Continúa si CL ≠ 0

    ; Salto de línea
             MOV AH, 09H
             LEA DX, salto
             INT 21H

    ; Finalizar
             MOV AH, 4CH
             INT 21H
    
MAIN ENDP
END MAIN