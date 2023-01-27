.model small
.stack 100h
.code
 n1 db 09h
 n2 db 08h
 prod db 000h
.code
 main proc

  mov ax,@data
  mov ds,ax

  mov al,prod

  mov al,n1
  mov bl,n2

  mul bl

  mov prod,al

  mov dx,ax

  mov ah,4ch
  int 21h
main endp
end main
