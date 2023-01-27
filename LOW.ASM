.model small
.data
 arr db 080h,097h,012h,001h,087h,006h
 msg1 db "The smallest number in array is:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 mov bl,00h
 mov al,00h

 lea si,arr

 mov cx,0006h
 mov dl,0ffh

abc:
 mov al,[si]
 mov bl,[si+1]
 cmp bl,al
 jbe xyz
 cmp dl,al
 jbe xyz
op:
 mov dl,al
xyz:
 inc si
 dec cx
 jnz abc

 mov al,00h
 mov al,dl
 lea dx,msg1
 mov ah,09h
 int 21h

 mov dl,al
 rol dl,04h
 and dl,0fh
 add dl,030h
 mov ah,02h
 int 21h

 mov dx,0000h
 mov dl,al
 and dl,0fh
 add dl,030h
 add dl,01h
 mov ah,02h
 int 21h

 mov ah,04ch
 int 21h

main endp
end main



