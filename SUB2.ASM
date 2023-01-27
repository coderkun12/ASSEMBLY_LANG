.model small
.stack 100
.data
m db 'Enter a number: $'
n db 'Difference is:$'
x db 0h
y db 0h
su db 0h
acar db 0h

.code
mov ax,@data
mov ds,ax

mov ah,09h
lea dx,m
int 21h

mov ah,01h
int 21h
sub al,30h
rol al,4h
mov bl,al
mov ah,01h
int 21h
sub al,30h

add bl,al
mov x,bl


mov dl,0ah
mov ah,02h
int 21h
mov dl,0dh
mov ah,02h
int 21h

mov ah,09h
lea dx,m
int 21h

mov ah,01h
int 21h
sub al,30h
rol al,4h
mov bl,al
mov ah,01h
int 21h
sub al,30h
add bl,al
mov y,bl

mov ah,09h
lea dx,n
int 21h

mov bl,x
mov al,y
sub bl,al
mov dl,bl
mov ch,02h
mov cl,04h
mov bh,dl

i1:
 rol bh,cl
 mov dl,bh
 and dl,0fh
 cmp dl,09h
 jbe i4
 add dl,07

i4:
 add dl,30h
 mov ah,02h
 int 21h
 dec ch
 jnz i1

mov ah,4ch
int 21h
end

