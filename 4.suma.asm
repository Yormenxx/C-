.MODEL SMALL
.STACK 100h
.DATA
    msg1       DB 'Ingrese un numero N (1-9): $'
    msgRes     DB 13,10,'La suma de 1 hasta N es: $'
    saltoLinea DB 13,10,'$'

.CODE
MAIN PROC
            mov ax, @data
            mov ds, ax

    ; --- Pedir N ---
            mov ah, 09h
            lea dx, msg1
            int 21h

            mov ah, 01h        ; Leer un caracter
            int 21h            ; AL = caracter ASCII
            sub al, '0'        ; Convertir ASCII a número
            mov cl, al         ; Guardar N en CL
            mov bx, 0          ; BX = suma
            mov dl, 1          ; DL = contador (1..N)

    ; --- Bucle para sumar ---
BUCLE:      
            add bx, dx         ; suma += DL
            inc dl             ; DL++
            loop BUCLE         ; decrementar CX y repetir

    ; --- Mostrar texto resultado ---
            mov ah, 09h
            lea dx, msgRes
            int 21h

    ; --- Convertir BX a ASCII (máx 2 dígitos) ---
            mov ax, bx
            mov cx, 0
            mov si, 0
            mov di, 0
            mov bp, 10

convertir:
            xor dx, dx
            div bp             ; AX / 10 → AX=cociente, DX=residuo
            add dl, '0'
            push dx
            inc cx
            test ax, ax
            jnz convertir

    ; --- Mostrar ASCII ---
mostrar:
            pop dx
            mov ah, 02h
            int 21h
            loop mostrar

    ; --- Salto de línea ---
            mov ah, 09h
            lea dx, saltoLinea
            int 21h

    ; --- Fin ---
            mov ah, 4Ch
            int 21h
MAIN ENDP
END MAIN
