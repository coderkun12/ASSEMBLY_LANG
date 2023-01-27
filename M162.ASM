.model small
.stack 100h
.data
 num1 dw 0000h
 num2 dw 0000h
 msb dw 0000h
 lsb dw 0000h
 msg1 db "Enter 16 bit number:$"
 msg2 db "The multiplication is:$"
.code
main proc
 mov ax,@data
 mov ds,ax      ;data segment initialization

 lea dx,msg1
 mov ah,09h
 int 21h      ;prints message

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
 mov num1,bx

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg1
 mov ah,09h
 int 21h

 mov ch,03h

 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 i2: rol ax,04h
 dec ch
 jnz i2
 mov bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 rol ax,08h
 add bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub ax,30h
 rol ax,04h
 add bx,ax
 mov ah,01h
 int 21h
 mov ah,00h
 sub al,30h
 add bx,ax
 mov num2,bx

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov ax,num1
 mul num2
 mov lsb,ax
 mov msb,dx

 mov ax,msb
 mov bx,ax
 mov ch,04h
 mov cl,04h
i3:
 rol bx,cl
 mov dx,bx
 and dx,0fh
 cmp dx,09h
 jbe i4
 add dx,07h
i4:
 add dx,30h
 mov ah,02h
 int 21h
 dec ch
 jnz i3

 mov ax,lsb
 mov bx,ax
 mov ch,04h
 mov cl,04h
i5:
 rol bx,cl
 mov dx,bx
 and dx,0fh
 cmp dx,09h
 jbe i6
 add dx,07h
i6:
 add dx,30h
 mov ah,02h
 int 21h
 dec ch
 jnz i5

 mov ah,4ch
 int 21h
main endp
end main








