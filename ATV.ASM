.model small
.stack 100h
.data
 n1 db 000h
 n2 db 000h
 msg db "Enter number:$"
.code
main proc
mov ax,@data
mov ds,ax

lea dx,msg
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

lea dx,msg
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

mov al,n1
add al,n2

mov cx,0002h
mov bl,al
xyz:
 rol bl,4
 mov dl,bl
 and dl,0fh
 cmp dl,09h
 jbe coa
 add dl,07h
coa:
 add dl,30h
 mov ah,02h
 int 21h
 dec cl
 jnz xyz

 mov ah,04ch
 int 21h
main endp
end main







