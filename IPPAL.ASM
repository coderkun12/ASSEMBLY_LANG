.model small
.stack 100h
.data
 string db 10,?,10 dup ("$")
 check db 10,?,10 dup("$")
 msg1 db "Enter your string: $"
 msg2 db "Is Palindrome!$"
 msg3 db "Is not Palindrome!$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg1
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
 inc si
 mov cx,0000h
 mov cl,[si]
 add si,cx
 lea di,check
 inc di
 inc di
xyz:
 mov al,[si]
 mov [di],al
 inc di
 dec si
 dec cl
 jnz xyz


 lea si,string
 lea di,check
 inc si
 mov cx,0000h
 mov cl,[si]
 inc di
 inc si
 inc di
 repe cmpsb
 add cl,30h
 cmp cl,'0'
 jne no
 lea dx,msg2
 mov ah,09h
 int 21h
 JMP exi

no:
 lea dx,msg3
 mov ah,09h
 int 21h

exi:
 mov ah,04ch
 int 21h
main endp
end main
 

