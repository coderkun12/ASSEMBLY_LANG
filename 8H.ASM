.model small
.stack 100
.code
main proc
 mov ah,08h
 int 21h

 mov ah,02h
 mov dl,al
 int 21h
main endp
end main

