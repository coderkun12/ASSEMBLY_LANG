.model small
.stack 100
.data
 N1 db 002h
 N2 db 001h
 SUB_LSB db 000h
 SUB_MSB db 000h
.code
main proc
 mov ax,@data
 mov ds,ax

 mov al,SUB_LSB ;sum
 mov ah,SUB_MSB ;carry
                                        
 mov al,N1
 mov bl,N2

 sub al,bl

 mov SUB_LSB,al
 sbb ah,00h
 mov SUB_MSB,ah

 mov ah,4ch
 int 21h
main endp
end main


