.MODEL SMALL
.STACK 100h
.DATA

    msg1 db "Ingrese el primer numero (0-9): $"
    msg2 db 13,10, "Ingrese el segundo numero (0-9): $"
    msg3 db 13,10, "Ingrese la operacion (+ - * /): $"
    msgR db 13,10,10, "Resultado: $"
    msgError db 13,10, "Error: Operador invalido!$"
    msgDivCero db 13,10, "Error: Division por cero!$"

    num1 db ?
    num2 db ?
    op   db ?
    res  db ?

.CODE
MAIN PROC
            mov ax, @data
            mov ds, ax

    ; pedir num1
            mov dx, OFFSET msg1
            mov ah, 09h
            int 21h

            mov ah, 01h
            int 21h
            mov num1, al

    ; pedir num2
            mov dx, OFFSET msg2
            mov ah, 09h
            int 21h

            mov ah, 01h
            int 21h
            mov num2, al

    ; pedir operación
            mov dx, OFFSET msg3
            mov ah, 09h
            int 21h

            mov ah, 01h            ; leer operador (+ - * /)
            int 21h
            mov op, al

    ; convertir ASCII a número
            mov al, num1
            sub al, '0'
            mov bl, al             ; bl = num1

            mov al, num2
            sub al, '0'
            mov cl, al             ; cl = num2

    ; realizar operación
            mov al, op
            cmp al, '+'
            je  SUMA
            cmp al, '-'
            je  RESTA
            cmp al, '*'
            je  MULTI
            cmp al, '/'
            je  DIVI
            jmp OPERADOR_INVALIDO  ; Si no es ninguno, error

    SUMA:   
            mov al, bl
            add al, cl
            jmp MOSTRAR

    RESTA:  
            mov al, bl
            sub al, cl
            jmp MOSTRAR

    MULTI:  
            mov al, bl
            mul cl                 ; resultado en AL
            jmp MOSTRAR

    DIVI:
            cmp cl, 0              ; VALIDACIÓN: verificar división por cero
            je  DIV_POR_CERO
            mov al, bl
            xor ah, ah
            div cl                 ; AL = resultado
            jmp MOSTRAR

    DIV_POR_CERO:
            mov dx, OFFSET msgDivCero
            mov ah, 09h
            int 21h
            jmp FIN

    OPERADOR_INVALIDO:
            mov dx, OFFSET msgError
            mov ah, 09h
            int 21h
            jmp FIN

    MOSTRAR:
            ; Verificar si resultado cabe en un dígito
            cmp al, 9
            jbe MOSTRAR_SIMPLE     ; Si es <= 9, mostrar simple
            
            ; Resultado de 2 dígitos
            mov bl, al             ; guardar resultado
            mov ah, 0
            mov cl, 10
            div cl                 ; AL = decenas, AH = unidades
            
            mov dx, OFFSET msgR
            push ax                ; guardar AL y AH
            mov ah, 09h
            int 21h
            pop ax                 ; recuperar AL y AH
            
            ; Mostrar decenas
            push ax
            add al, '0'
            mov dl, al
            mov ah, 02h
            int 21h
            pop ax
            
            ; Mostrar unidades
            mov al, ah
            add al, '0'
            mov dl, al
            mov ah, 02h
            int 21h
            jmp FIN

    MOSTRAR_SIMPLE:
            add al, '0'            ; convertir a ASCII
            mov res, al

            mov dx, OFFSET msgR
            mov ah, 09h
            int 21h

            mov dl, res
            mov ah, 02h
            int 21h

    FIN:    
            mov ax, 4C00h
            int 21h

MAIN ENDP
END MAIN