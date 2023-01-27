.model small
.stack 100h
.data
 d1 db "COMPUTER$"
 d2 db "$$$$$$$$$"
.code
main proc
 mov ax,@data
 mov ds,ax

 mov es,ax

 mov si,offset d1
 mov di,offset d2

 cld

 mov cl,09
 rep movsb

 lea dx,d2

 mov ah,09h
 int 21h
main endp
end main
