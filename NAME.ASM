.model small
.stack 100
.code
main proc
 mov ah,02h
 mov dl,4bh
 int 21h

 mov ah,02h
 mov dl,75h
 int 21h

 mov ah,02h
 mov dl,6eh
 int 21h

 mov ah,02h
 mov dl,61h
 int 21h

 mov ah,02h
 mov dl,6ch
 int 21h
main endp
end main

