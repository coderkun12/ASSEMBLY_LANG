.model small
.stack 99h
.data
 string db 10,?,10 dup('$')
 chara db "K"
 msg1 db "ENTER STRING:$"
 msg2 db "K NOT FOUND$"
 msg3 db "FOUND K$"

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
 mov al,chara

 cld
 mov cl,[si]

 repne scasb
 jz yes

 lea dx,msg2
 mov ah,09h
 int 21h
 JMP OVER

yes:
 lea dx,msg3
 mov ah,09h
 int 21h

OVER:
 mov ah,04ch
 int 21h

main endp
end main





