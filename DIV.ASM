.model small
.data
a dw 1200
b db 12
q db ?
r db ?

.code
mov ax, @data
mov ds, ax

mov al, b
div a
mov q, al
mov r, ah

mov ah, 4ch
int 21h

end
