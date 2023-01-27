.model small
.stack 100h
.data
 str1 db 'String$'
 strlen dw $-str1
strrev db 20 dup('$')
.code
main proc
 mov ax,@data
mov ds,ax
mov es,ax
mov cx,strlen
add cx,-2
lea si,str1
lea di,strrev
add si,strlen
add si,-2
abc:
mov al,[si]
mov [di],al
dec si
inc di
loop abc
mov al,[si]
mov [di],al
inc di
mov dl,'$'
mov [di],dl

mov ah,09h
lea dx,strrev
int 21h
main endp
end main


