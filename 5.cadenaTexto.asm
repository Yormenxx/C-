.MODEL SMALL
.STACK 100h
.DATA

; ===== mensajes de entrada =====
msgnombre  db "  >> Ingrese su nombre completo: $"
msgcarrera db "  >> Ingrese su carrera: $"

; ===== buffers (corregidos) =====
buffernombre db 51           
             db ?            
             db 51 dup(?)    

buffercarrera db 51
              db ?
              db 51 dup(?)

; ===== elementos decorativos =====
salto db 13,10,'$'

; líneas decorativas
lineasup    db "    +=============================================+$"
lineainf    db "    +=============================================+$"
lineamedia  db "    +---------------------------------------------+$"

titulo      db "    |        SISTEMA DE REGISTRO ESTUDIANTIL      |$"
subtitulo   db "    |           Universidad UNAD - 2025             |$"

etiqnombre  db "    |                                             |$"
datanombre  db "    |  NOMBRE:  $"
etiqcarrera db "    |                                             |$"
datacarrera db "    |  CARRERA: $"

footer      db "    |      Gracias por usar nuestro sistema       |$"
espacio     db "    |                                             |$"

.code

; ===== procedimiento: imprimir cadena centrada dentro del recuadro =====
printlineacentrada proc
    push si
    push cx
    push dx
    push ax
    
    ; imprimir inicio de línea "    |  "
    mov dl, ' '
    mov ah, 02h
    int 21h
    int 21h
    int 21h
    int 21h
    mov dl, '|'
    int 21h
    mov dl, ' '
    int 21h
    int 21h
    
    pop dx
    push dx
    mov si, dx
    mov cx, 0
contar_loop:
    mov al, [si]
    cmp al, '$'
    je fin_contar
    inc si
    inc cx
    jmp contar_loop
fin_contar:
    
    mov ax, 41
    sub ax, cx
    shr ax, 1
    mov cx, ax
    
espacios_izq:
    cmp cx, 0
    je impr_texto
    mov dl, ' '
    mov ah, 02h
    int 21h
    dec cx
    jmp espacios_izq
    
impr_texto:
    pop dx
    push dx
    mov ah, 09h
    int 21h
    
    pop dx
    push dx
    mov si, dx
    mov cx, 0
contar2:
    mov al, [si]
    cmp al, '$'
    je fin_contar2
    inc si
    inc cx
    jmp contar2
fin_contar2:
    
    mov ax, 41
    sub ax, cx
    shr ax, 1
    mov cx, ax
    
    pop dx
    push dx
    mov si, dx
    mov bx, 0
contar3:
    mov al, [si]
    cmp al, '$'
    je verificar_par
    inc si
    inc bx
    jmp contar3
verificar_par:
    test bx, 1
    jz espacios_der
    inc cx
    
espacios_der:
    cmp cx, 0
    je fin_linea
    mov dl, ' '
    mov ah, 02h
    int 21h
    dec cx
    jmp espacios_der
    
fin_linea:
    mov dl, ' '
    mov ah, 02h
    int 21h
    mov dl, '|'
    int 21h
    
    pop dx
    pop ax
    pop cx
    pop si
    ret
printlineacentrada endp

main proc
    mov ax, @data
    mov ds, ax

    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, lineasup
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, titulo
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, subtitulo
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, lineamedia
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, espacio
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, msgnombre
    mov ah, 09h
    int 21h

    lea dx, buffernombre
    mov ah, 0ah
    int 21h

    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, msgcarrera
    mov ah, 09h
    int 21h

    lea dx, buffercarrera
    mov ah, 0ah
    int 21h

    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, lineamedia
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, espacio
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, datanombre
    mov ah, 09h
    int 21h

    lea si, buffernombre+2
    mov ch, 0
    mov cl, buffernombre+1

printnombre:
    cmp cx, 0
    je fin_nombre
    mov dl, [si]
    cmp dl, 0dh
    je fin_nombre
    mov ah, 02h
    int 21h
    inc si
    dec cx
    jmp printnombre
fin_nombre:

    mov cx, 26
    sub cl, buffernombre+1
completar_nombre:
    cmp cx, 0
    jle cerrar_nombre
    mov dl, ' '
    mov ah, 02h
    int 21h
    dec cx
    jmp completar_nombre
cerrar_nombre:
    mov dl, '|'
    mov ah, 02h
    int 21h

    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, etiqnombre
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, datacarrera
    mov ah, 09h
    int 21h

    lea si, buffercarrera+2
    mov ch, 0
    mov cl, buffercarrera+1

printcarrera:
    cmp cx, 0
    je fin_carrera
    mov dl, [si]
    cmp dl, 0dh
    je fin_carrera
    mov ah, 02h
    int 21h
    inc si
    dec cx
    jmp printcarrera
fin_carrera:

    mov cx, 25
    sub cl, buffercarrera+1
completar_carrera:
    cmp cx, 0
    jle cerrar_carrera
    mov dl, ' '
    mov ah, 02h
    int 21h
    dec cx
    jmp completar_carrera
cerrar_carrera:
    mov dl, '|'
    mov ah, 02h
    int 21h

    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, espacio
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h

    lea dx, lineamedia
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, footer
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    
    lea dx, lineainf
    mov ah, 09h
    int 21h
    
    lea dx, salto
    mov ah, 09h
    int 21h
    lea dx, salto
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

MAIN endp
END MAIN
