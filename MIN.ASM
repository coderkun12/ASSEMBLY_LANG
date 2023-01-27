.mode small
.stack 100h
.code
main proc
 mov ch,03h

 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 i1: rol ax,04h
 dec ch
 jnz i1
 mov bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 rol ax,8h
 add bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 rol ax,4h
 add bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 add bx,ax


main endp
end main



