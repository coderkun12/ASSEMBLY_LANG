.model small
.stack 100
.data
 num db 00h
 res dw 0000h
 msg1 db "Enter number:$"
 msg2 db "The cube of number is:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg1
 mov ah,09h
 int 21h
 mov bl,00h

 mov ah,01h
 int 21h
 sub al,30h
 rol al,04
 add bl,al
 mov ah,01h
 int 21h
 sub al,30h
 add bl,al

 mov num,bl

 mov ax,0000h
 mov bl,num
 mov al,bl
 mul num 
 mul num

 mov res,ax

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov bx,res
 mov cx,0000h
 mov cx,04
i1:
 rol bx,04
 mov dx,bx
 and dx,0fh
 cmp dx,09h
 jbe i2
 add dx,07h

i2:
 add dx,30h
 mov ah,02h
 int 21h
 dec cx
 jnz i1

 mov ah,4ch
 int 21h
main endp
end main


