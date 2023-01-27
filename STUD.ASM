.model small
.stack 110h
.data
 perd db 000h
 perh db 000h
 tot dw 00000h
 marks db 045h,050h,029h,038h,042h
 msg1 db "Total marks out of 500:$"
.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax

 lea si,marks
 mov ax,0000h
 mov bx,0000h
 mov cx,00005h
ad:
 mov bl,[si]
 add ax,bx
 daa
 adc ah,00h
 inc si
 dec cl
 jnz ad

 mov tot,ax
 mov ah,09h
 lea dx,msg1
 int 21h
 mov cx,0004h
 mov bx,tot
fig:
 rol bx,04h
 mov dl,bl
 and dl,0fh
 add dl,30h
 mov ah,02h
 int 21h
 dec cl
 jnz fig

 mov ah,04ch
 int 21h
main endp
end main
