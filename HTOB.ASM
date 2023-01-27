.model small
.stack 100h
.code
main proc
 mov ax,0ffffh
 mov dh,00h
 mov bx,0000h
 mov cx,00400h
up:
 mov dx,0000h
 mov bx,000ah
 div bx
 inc cl
 dec ch
 jnz up
mov ah,04ch
int 21h
main endp
end main

 
