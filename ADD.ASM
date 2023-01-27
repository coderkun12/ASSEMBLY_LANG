.model small
.stack 100
.data
 N1 db 0EFh
 N2 db 0DCh
 SUM_LSB db 000h
 SUM_MSB db 000h
.code
main proc
 mov ax,@data
 mov ds,ax

 mov al,SUM_LSB ;sum
 mov ah,SUM_MSB ;carry
                                          ;use radix shift logic from end to beg
 mov al,N2
 mov bl,N1

 add al,bl

 mov SUM_LSB,al
 adc ah,00h
 mov SUM_MSB,ah

 mov ah,4ch
 int 21h
main endp
end main


