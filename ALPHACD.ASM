.model small
.stack 100
.code
main proc
 mov ah,02h
 mov dl,2ah
 int 21h

 mov ah,02h
 mov dl,43h
 int 21h

 mov ah,02h
 mov dl,44h
 int 21h

 mov ah,02h
 mov dl,2ah
 int 21h


main endp
end main



