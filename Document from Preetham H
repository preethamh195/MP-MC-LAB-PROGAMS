.model small
display macro msg
     lea dx,msg
     mov ah,09h
     int 21h
endm
.data
n db 6
a db 05,07,04,03,06,02
msg1 db 0dh,0ah,"1 - sort in ascending order$"
msg2 db 0dh,0ah,"2 - sort in descending order$"
msg3 db 0dh,0ah,"3 - exit$"
msg4 db 0dh,0ah,"enter your choice$"
msg5 db 0dh,0ah,"Invalid choice$"
.code
mov ax,@data
mov ds,ax
lea si,a
mov cl,n
dec cl
display msg1
display msg2
display msg3
display msg4
mov ah,01h
int 21h
sub al,30h
cmp al,01h
je ascsort
cmp al,02h
je descsort
cmp al,03h
je final
display msg5
jmp  final

ascsort:mov ch,cl
mov si,00h
inloopa:mov al,a[si]
inc si
cmp al,a[si]
jc noa
xchg al,a[si]
mov a[si-1],al
noa:dec ch
jnz inloopa
dec cl
jnz ascsort
jmp final

descsort:mov ch,cl
mov si,00h
inloopd:mov al,a[si]
inc si
cmp al,a[si]
jnc nod
xchg al,a[si]
mov a[si-1],al
nod:dec ch
jnz inloopd
dec cl
jnz descsort
jmp final

final:mov ah,4ch
int 21h
end
