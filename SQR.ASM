.model small
.stack 100
.data
 msg1 db "Enter a number: $"
 msg2 db "The square of number is: $"
 num dw 0000h
 lsb dw 0000h
 msb dw 0000h
.code
main proc
 mov ax,@data
 mov ds,ax                 ;Initialization of DS

 mov es,ax                 ;Initialization of ES

 lea dx,msg1
 mov ah,09h
 int 21h

 mov ah,01h
 int 21h
 sub al,30h
 rol al,04h
 mov bh,00h
 add bh,al
 mov ah,01h
 int 21h
 sub al,30h
 add bh,al
 mov bl,00h
 mov ah,01h
 int 21h
 sub al,30h
 rol al,04h
 add bl,al
 mov ah,01h
 int 21h
 sub al,30h
 add bl,al    ;Input of number completes

 mov num,bx

 mov bx,num
 mov ax,0000h
 add ax,bx
 mul bx

 mov msb,dx
 mov lsb,ax

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov ax,msb
 mov bx,ax
 mov cx,0000h
 mov cx,04h

i1:
 rol bx,04
 mov dx,bx
 and dx,0fh
 cmp dx,09
 jbe i2
 add dx,07h
i2:
 add dx,30h
 mov ah,02h
 int 21h
 dec cx
 jnz i1

 mov dx,0000h
 mov ax,lsb
 mov bx,ax
 mov cx,0000h
 mov cx,04

i3:
 rol bx,04
 mov dx,bx
 and dx,0fh
 cmp dx,09
 jbe i4
 add dx,07h
i4:
 add dx,30h
 mov ah,02h
 int 21h
 dec cx
 jnz i3

 mov ah,4ch
 int 21h
main endp
end main



