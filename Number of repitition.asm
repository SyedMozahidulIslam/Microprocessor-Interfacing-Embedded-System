org 100h

lea si,str1

search:
mov bl,[si]
cmp bl,"$"
jz end
cmp bl, 'l'
jz save
inc si
loop search
end:  

mov ah,9
mov dx,offset msg1
int 21h

mov ah,2
mov dl, countK
add dl,48
int 21h

ret
save:
inc countK
inc si
jmp search:
ret

str1 db "Hello world$"
countK db 0
msg1 db "Total number of occurance of the key: $"



