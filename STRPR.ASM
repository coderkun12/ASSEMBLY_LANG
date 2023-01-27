.model small
.stack 100
.data
STRING db 'Hello World!','$'
.code
main proc
 MOV ax,@DATA
 MOV DS,AX

 LEA DX,STRING

 MOV ah,09h
 int 21h
main endp
end main
