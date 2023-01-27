.model small
.stack 100h
.data
 strr db 50,?,50 dup ("$")
 msg1 db "The string length is:$"
 msg2 db "The string after deleting 4th letter is:$"
 msg3 db "Enter a string:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea dx,msg3
 mov ah,09h
 int 21h
 lea dx,strr
 mov ah,0ah
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg1
 mov ah,09h
 int 21h
 lea si,strr
 inc si
 mov cx,0000h
 mov cx,[si]
 mov dl,cl
 add dl,30h
 mov ah,02h
 int 21h

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea si,strr
 inc si
 mov cx,0000h
 mov cx,[si]
 mov ch,000h
 add ch,30h
xyz:
  cmp ch,'4'
  jae no
  inc si
  inc ch
  jmp oc
no:
  mov al,[si+1]
  mov [si],al
  inc si
  inc ch
oc:
 dec cl
 jnz xyz
 mov al,'$'
 mov [si+1],al

 mov ah,02h
 mov dl,0ah
 int 21h
 mov ah,02h
 mov dl,0dh
 int 21h

 lea dx,msg2
 mov ah,09h
 int 21h
 lea dx,strr
 mov ah,09h
 int 21h

 mov ah,04ch
 int 21h
main endp
end main
