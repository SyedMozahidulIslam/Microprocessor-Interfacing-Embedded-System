org 100h

lea si,str1
lea di,str2 

search: 

mov bl,[si]
mov bh,[di]
cmp bl,bh
jnz result
inc si
inc di
cmp [si],"$"
jnz search

mov dx,offset msg1
mov ah,9
int 21h

ret
result:
mov dx,offset msg2
mov ah,9
int 21h

str1 db "Hello$"
str2 db "Hello$"
msg1 db "Same String$"
msg2 db "Not Same String$"
