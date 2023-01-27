.model small
.stack 100h
.data
 n1 db 000h
 n2 db 000h
 msg1 db "Enter a 8-bit number:$"
 msg2 db "The hexa-decimal product of multiplication is:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg1
 mov ah,09h
 int 21h

 mov ah,01h
 int 21h
 sub al,30h
 rol al,04h
 mov bx,0000h
 mov bl,al
 mov ah,01h
 int 21h
 sub al,30h
 add bl,al
 mov n1,bl

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg1
 mov ah,09h
 int 21h

 mov ah,01h
 int 21h
 sub al,30h
 rol al,04h
 mov bx,0000h
 mov bl,al
 mov ah,01h
 int 21h
 sub al,30h
 add bl,al
 mov n2,bl

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov ax,0000h
 mov al,n1
 mov bl,n2
 mul bl

 mov bx,ax
 mov cx,0004h
xyz:
 rol bx,04h
 mov dl,bl
 and dl,0fh
 cmp dl,09h
 jbe sos
 add dl,07h
sos:
 add dl,30h
 mov ah,02h
 int 21h
 dec cl
 jnz xyz

 mov ah,04ch
 int 21h
main endp
end main

