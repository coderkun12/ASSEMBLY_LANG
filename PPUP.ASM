;;PACKED TO UNPACKED
.model small
.stack 100
.data
 n1 db 98h
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov dl,n1
 mov bx,0000h
 mov al,dl
 rol al,04h
 and al,0fh
 add bh,al
 mov al,dl
 and al,0fh
 add bl,al

 mov cl,04h
i1: rol bx,04h
    mov dx,bx
    and dl,0fh
    cmp dl,09h
    jbe i4
    add dl,07h
i4: add dl,30h
    mov ah,02h
    int 21h
    dec cl
    jnz i1
main endp
end main
