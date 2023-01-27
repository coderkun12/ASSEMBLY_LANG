.model small
.stack 100
.code
main proc
  mov ah,01h
  int 21h

  mov dl,al
  sub dl,20h

  mov ah,02h
  int 21h
main endp
end main
