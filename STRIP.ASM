.model small
.stack 100
.data

 buffer db 9
        db 10 dup('$')
.code
main proc
 mov ax,@data
 mov ds,ax

 mov ah,0ah
 int 21h

 lea dx,[buffer]
 inc dx
 inc dx

 mov ah,09h
 int 21h

 mov ah,4ch
 int 21h
MAIN ENDP
END MAIN

