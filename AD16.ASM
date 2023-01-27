.model small
.stack 100h
.data
 msg db "The sum is:$"
 num1 dw 7AD1h
 num2 dw 0AD0h
.code
 main proc
  mov ax,@data
  mov ds,ax

  mov ax,num1
  mov bx,num2

  add ax,bx
  adc ah,00h

  mov dx,ax

  mov ah,4ch
  int 21h
main endp
end main
