.model small
.stack 100h
.data
 d1 db "COMPUTER$"
 d2 db "$$$$$$$$$"
.code
main proc
 mov ax,@data
 mov ds,ax    ;data segment initialised

 mov es,ax

 mov si,offset d1
 mov di,offset d2 ;address loaded

 cld           ;direction flag cleared
 mov ch,08     ;counter set

i1:
 mov dl,[si]
 mov [di],dl
 inc si
 inc di
 dec ch
 jnz i1

 lea dx,d2

 mov ah,09h
 int 21h

 ;mov ah,4ch
 ;int 21h

main endp
end main


