.model small
.stack 100
.code
main proc
  mov ah,09h
  mov bl,61
  mov cx,1
  int 10h

  mov ah,02h
  mov dl,41h
  int 21h
main endp
end main
