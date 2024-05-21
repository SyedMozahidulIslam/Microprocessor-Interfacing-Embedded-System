org 100h  

lea di,str1  

search1:
mov bl,[di]
inc total
inc di
cmp bl,"$"
jnz search1
dec total

lea si,str1
lea di,str2
add di, total 
search:

mov bl,[si]
mov [di],bl
inc si
dec di
cmp bl,"$"
jnz search

mov dx,offset msg1
mov ah,9
int 21h

inc total
lea di,str2
mov cx, total 
print:

mov ah,2
mov dl,[di]
int 21h
inc di
loop print 

ret

str1 db "Hello World$"
str2 db 50 dup (0)
msg1 db "Reverse string is: $"
total dw -1