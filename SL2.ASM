.model small
.stack 100h
.data
 msg1 db "String:$"
 msg2 db "The Length of string is:$"
 string db "BOMBAY$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg1
 mov ah,09h
 int 21h

 lea dx,string
 mov ah,09h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 mov cx,0000h
 lea si,string
 inc si
abc:
 inc si
 inc cl
 mov al,[si]
 cmp al,'$'
 jne abc

 add cl,01h
 add cl,30h

 lea dx,msg2
 mov ah,09h
 int 21h

 mov dl,cl
 mov ah,02h
 int 21h

main endp
end main



