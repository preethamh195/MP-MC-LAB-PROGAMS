.model small
.data
a dw 550
b dw 450
c dw ?
.code
    mov ax,@data
    mov ds,ax
    mov ax,a
    mov ax,b
    mov cx,ax
    mov ah,4ch
    int 21h
    end
