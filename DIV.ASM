.model small
.stack 100h
.data
 num1 dw 7612h
 num2 db 09h
 quo db 00h
 rem db 00h
.code
main proc
 mov ax,@data
 mov ds,ax

 mov ax,num1
 mov dl,num2

 div dl

 mov quo,al
 mov rem,ah

 mov ah,4ch
 int 21h
main endp
end main



