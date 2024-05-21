org 100h

lea di,str1

search1:
mov bl,[di]
cmp bl, " "
jz skip
inc total
skip:

inc di
cmp bl,"$"
jnz search1
mov ah,9
mov dx,offset msg1
int 21h

mov ah,2
mov dl, total
add dl,48
int 21h

ret
str1 db "Hello World$"
total db -1
msg1 db "Total number of characters are: $"




