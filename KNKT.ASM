.model small
.stack 99h
.data
str1 db 60,?,60 dup("$")
str2 db 30,?,30 dup("$")
msg1 db "ENTER STRING:$"
msg2 db "THE CONCATENATED STRING IS:$"
.code
main proc
mov ax,@data
mov ds,ax
mov es,ax

lea dx,msg1
mov ah,09h
int 21h
lea dx,str1
mov ah,0ah
int 21h

mov ah,02h
mov dl,0ah
int 21h
mov ah,02h
mov dl,0dh
int 21h

lea dx,msg1
mov ah,09h
int 21h
lea dx,str2
mov ah,0ah
int 21h

mov ah,02h
mov dl,0ah
int 21h
mov ah,02h
mov dl,0dh
int 21h

mov bx,0000h
lea di,str1
inc di
mov bl,[di]
add di, bx
inc di
lea si,str2
inc si
mov cl,[si]
inc si

cld

rep movsb

lea dx,msg2
mov ah,09h
int 21h
lea dx,str1
mov ah,09h
int 21h

mov ah,04ch
int 21h

main endp
end main
