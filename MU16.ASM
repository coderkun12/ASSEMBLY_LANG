.model small
.stack 100h
.data
 msg db "The sum is:$"
 num1 dw 5AD0h
 num2 dw 0AD0h
 mul_msb dw 0000h
 mul_lsb dw 0000h
.code
 main proc
  mov ax,@data
  mov ds,ax

  mov ax,num1
  mov bx,num2

  mul bx
  mov mul_lsb,ax ;mov lsb

  mov mul_msb,dx ;mov msb

  mov ah,4ch
  int 21h
main endp
end main
