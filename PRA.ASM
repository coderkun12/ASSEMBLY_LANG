.model small
.stack 100h
.code
main proc
 mov ah,08h
 int 21h
 mov dl,al
 mov ah,02h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 mov ah,01h
 int 21h
 mov dl,al
 mov ah,02h
 int 21h

 mov ah,04ch
 int 21h
main endp
end main


