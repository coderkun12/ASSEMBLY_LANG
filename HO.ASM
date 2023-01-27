.model small
.stack 100h
.code
main proc
 mov ah,01h
 int 21h
 sub al,30h
 mov ah,00h
 rol ax,0Ch
 mov bx,ax
 mov ah,01h
 int 21h
 sub al,30h
 mov ah,00h
 rol ax,08h
 add bx,ax
 mov ah,01h
 int 21h
 sub al,30h
 rol al,04h
 add bl,al
 mov ah,01h
 int 21h
 sub al,30h
 add bl,al
main endp
end main




