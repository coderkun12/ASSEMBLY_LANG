.model small
.stack 100h
.data
 num1 dw 981Ah
 num2 dw 7891h
.code
main proc
 mov ax,@data
 mov ds,ax

 mov ax,num1
 mov bx,num2

 sub ax,bx
 adc ah,00h

 mov dx,ax

 mov ah,4ch
 int 21h
main endp
end main
