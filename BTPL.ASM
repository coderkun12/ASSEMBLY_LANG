;BITWISE PALINDROME
.model small
.data
 num db 000h
 msg1 db "Is Palindrome$"
 msg2 db "Is Not Palindrome$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov bl,num
 and bl,081h
 jnp ov
 mov bl,num
 and bl,042h
 jnp ov
 mov bl,num
 and bl,024h
 jnp ov
 mov bl,num
 and bl,018h
 jnp ov
 lea dx,msg1
 mov ah,09h
 int 21h
 jmp kl
ov:
 mov dx,offset msg2
 mov ah,09h
 int 21h
kl:
 mov ah,04ch
 int 21h
main endp
end main



