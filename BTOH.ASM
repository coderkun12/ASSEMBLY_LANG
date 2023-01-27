.model small
.stack 100h
.data
 n1 db 03h
 n2 db 05h
 n3 db 01h
 n4 db 09h
 n5 db 03h                  
 msg1 db "The BCD number is: $"
 msg2 db "35193$"
 msg3 db "The Hexa-decimal equivalent is: $"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg1
 mov ah,09h
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 mov ax,0000h
 mov bx,0000h
 mov al,n1
 mov dx,02710h
 mul dx

 mov bx,ax

 mov ax,0000h
 mov al,n2
 mov dx,03e8h
 mul dx
 add bx,ax

 mov ax,0000h
 mov al,n3
 mov dl,064h
 mul dx
 add bx,ax

 mov ax,0000h
 mov al,n4
 mov dl,00Ah
 mul dl
 add bx,ax

 mov ax,0000h
 mov al,n5
 mov dl,001h
 mul dl
 add bx,ax

 lea dx,msg3
 mov ah,09h
 int 21h

 mov cx,0004h
xyz:
 rol bx,04h
 mov dl,bl
 and dl,0fh
 cmp dl,'9'
 jbe op
 add dl,07h
op:
 add dl,30h
 mov ah,02h
 int 21h
 dec cx
 jnz xyz

 mov ah,04ch
 int 21h
main endp
end main
