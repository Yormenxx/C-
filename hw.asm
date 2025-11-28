.286

pila segment stack

    db 32 DUP('stack--')

pila ends


datos segment

    msg db 'Hola, mundo','$'

datos ends

codigo segment 'code'
main proc FAR

    assume ss:pila, ds:datos, cs:codigo


    mov ax, datos
    mov ds,ax


    mov ah,09h
    mov dx,offset msg
    int 21h

    ret 
main endp
codigo ends
end main







