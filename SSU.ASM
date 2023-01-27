.model small
.stack 100h
.data
 msg1 db "Enter number:$"
 n1 dw 00000h
 n2 dw 00000h
 hn dw 00000h
 ln dw 00000h
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov dx,offset msg1
 mov ah,09h
 int 21
main endp
end main

