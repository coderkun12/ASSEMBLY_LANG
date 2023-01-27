.model small
.stack 100
.data
 N1 db 002h
 N2 db 003h
 MUL_LSB db 000h
.code
main proc
 mov ax,@data
 mov ds,ax

 mov al,MUL_LSB
                                          
 mov al,N2
 mov bl,N1

 mul bl

 mov MUL_LSB,al

 mov ah,4ch
 int 21h
main endp
end main


