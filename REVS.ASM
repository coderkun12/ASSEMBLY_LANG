.model small
.stack 100h
.data
 d1 db 11
    d2 db 11 dup ('$')
 msg1 db "Enter string:$"
 msg2 db "Reversed string is:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg1
 mov ah,09h
 int 21h

 lea dx,d1
 mov ah,0ah       ; string accepted
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea si,d1
 inc si
 mov bl,[si]        ;[di+1]=actual length
 mov cx,0000h
 mov cl,bl

abc:
 inc si
 dec cl
 jnz abc      ; si=si+actual length

 lea di,d2
 inc di
 mov cl,bl
 mov ax,0000h

xyz:
 inc di
 mov al,[si]
 mov [di],al
 dec si
 dec cl
 jnz xyz

 lea dx,msg2
 mov ah,09h
 int 21h

 lea dx,d2
 mov ah,09h
 int 21h

main endp
end main

 
