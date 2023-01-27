.model small
.stack 100h
.data
 msg1 db "Enter string:$"
 msg2 db "The Length of string is:$"
 string db 11
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

 mov bl,[si]
 add bl,30h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov dl,bl
 mov ah,02h
 int 21h

main endp
end main



