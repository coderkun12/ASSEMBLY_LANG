.model small
.data
 string db 60,?,60 dup ("$")
 str2 db 60,?,60 dup ("$")
 msg db "Enter String:$"
 msg1 db "Is Palindrome$"
 msg2 db "Is not palindrome$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov dx,offset msg
 mov ah,09h
 int 21h
 lea dx,string
 mov ah,0ah
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea si,string
 lea di,str2

 inc si
 inc di
 mov cx,0000h
 mov cl,[si]
 mov [di],cl
 add si,cx
 inc di
 cld
abc:
 mov al,[si]
 mov [di],al
 inc di
 dec si
 dec cl
 jnz abc

 lea si,string
 lea di,str2
 inc si
 mov cx,0000h
 mov cl,[si]
 inc si
 inc di
 inc di
 cld 
 repe cmpsb

 add cl,30h
 cmp cl,'0'
 jnz kk

 mov dx,offset msg1
 mov ah,09h
 int 21h
 JMP lk
kk:
 lea dx,msg2
 mov ah,09h
 int 21h
lk:
 mov ah,04ch
 int 21h
main endp
end main



