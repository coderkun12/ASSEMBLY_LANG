.model small
.stack 100h
.data
 num dw 06A42h
 msg1 db "Number of Zeros:$"
 msg2 db "Number of Ones:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov cx,0000h
 mov cl,16
 mov ax,num
xyz:
 rcr ax,01h
 jnc ac
 inc ch
ac:
 dec cl
 jnz xyz

 mov ah,09h
 lea dx,msg2
 int 21h
 mov dl,ch
 add dl,30h
 mov ah,02h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov dl,0dh
 mov ah,02h
 int 21h

 mov cx,0000
 mov cl,16
 mov ax,num
xz:
 rcr ax,01h
 jc acn
 inc ch
acn:
 dec cl
 jnz xz

 mov bl,00h
 mov ah,09h
 lea dx,msg1
 int 21h
 add bl,ch
 daa
 mov cx,0002h
z:
 rol bl,4
 mov dl,bl
 and dl,0fh
 cmp dl,9
 jbe mn
 add dl,07h
mn:
 add dl,30h
 mov ah,02h
 int 21h
 dec cl
 jnz z

mov ah,04ch
int 21h
main endp
end main
