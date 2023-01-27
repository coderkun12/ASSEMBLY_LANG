.model small
.stack 100h
.data
 d1 db "pop$"
 d2 db "lol$"
 msg1 db "String 1 is:$"
 msg2 db "String 2 is:$"
 msg3 db "String 1 after exchange:$"
 msg4 db "String 2 after exchange:$"
.code
main proc
 mov ax,@data
 mov ds,ax

 lea dx,msg1
 mov ah,09h
 int 21h
 lea dx,d1
 mov ah,09h
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h
 lea dx,d2
 mov ah,09h
 int 21h

 mov cx,0000h
 mov cl,04

 mov si,offset d1
 mov di,offset d2

i1:
 mov bl,[si]
 xchg [di],bl
 mov [si],bl
 inc si
 inc di
 dec cx
 jnz i1

 lea dx,msg3
 mov ah,09h
 int 21h
 lea dx,d1
 mov ah,09h
 int 21h

 lea dx,msg4
 mov ah,09h
 int 21h
 lea dx,d2
 mov ah,09h
 int 21h

 ;int 27h
main endp
end main


 
