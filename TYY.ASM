.model small
.stack 100
.data
 msg1 db "Enter number:","$"
 n1 db ?
.code
main proc
 mov ax,@data
 mov ds,ax

 lea dx,msg1
 mov ah,09h
 int 21h
 
 mov ah,01h
 int 21h
 cmp al,09h
 jbe number
 
 number:
 mov cl,04h
 rol al,cl
 mov ah,01h
 int 21h

main endp
end main
