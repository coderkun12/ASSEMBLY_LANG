.model small
.stack 100h
.data
 string db "India$"
 len db 05h
 reve db "$$$$$$"
 msg1 db "String Length is:$"
 msg2 db "Reverse of String is:$"
 msg3 db "Not a Palindrome$"
 msg4 db "A Palindrome$"
 msg5 db "Given String is:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg5
 mov ah,09h
 int 21h
 lea dx,string
 mov ah,09h
 int 21h       ;Prints Original String

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h                              ;New Line

 lea dx,msg1
 mov ah,09h
 int 21h
 mov dl,len
 add dl,30h
 mov ah,02h                         ;Prints length
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 mov cx,0005h
 lea si,string
 add si,0004h
 lea di,reve
abc:
 mov al,[si]
 mov [di],al
 inc di
 dec si
 dec cl
 jnz abc

 lea dx,msg2
 mov ah,09h
 int 21h
 lea dx,reve
 mov ah,09h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea di,reve
 lea si,string
 mov cx,0005h
repe cmpsb
 cmp cl,'0'
 jae nc
 lea dx,msg3
 mov ah,09h
 int 21h
 jmp ou
nc:
 lea dx,msg4
 mov ah,09h
 int 21h

ou:
 mov ah,04ch
 int 21h
main endp
end main

