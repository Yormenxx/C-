.MODEL SMALL
.STACK 100H
.DATA
    
    mensaje    db 'Contador ascendente del 1 al 10:$'
    saltoLinea db 13, 10, '$'
.CODE
MAIN PROC
    
                  mov  AX, @DATA
                  mov  DS, AX

    ; Mostrar el título
                  mov  AH, 09H
                  lea  DX, mensaje
                  int  21H

    ; Salto de línea
                  mov  AH, 09H
                  lea  DX, saltoLinea
                  int  21H

    ; Inicializamos el contador
                  mov  CX, 10            ; Contaremos 10 veces
                  mov  BL, 1             ; Valor inicial = 1

    INICIO:       

    ; Verificar si el contador es 10
                  cmp  BL, 10
                  je   IMPRIMIR_DIEZ

    ; Convertir números 1–9 a ASCII
                  mov  AL, BL
                  add  AL, 30H           ; Convierte número a ASCII
    
    ; Mostrar número (1–9)
                  mov  DL, AL
                  mov  AH, 02H
                  int  21H
                  jmp  CONTINUAR

    ; Mostrar 10
    IMPRIMIR_DIEZ:
                  mov  DL, '1'
                  mov  AH, 02H
                  int  21H

                  mov  DL, '0'
                  mov  AH, 02H
                  int  21H

    CONTINUAR:    

    ; Mostrar salto de línea
                  mov  AH, 09H
                  lea  DX, saltoLinea
                  int  21H

    ; Incrementar contador
                  inc  BL
                  loop INICIO

    ; Finalizar programa
                  mov  AH, 4CH
                  int  21H

MAIN ENDP
END MAIN
