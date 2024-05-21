org 100h
lea si,str1
search:
mov bl,[si]
cmp bl,"$"
jz end
cmp bl, 'a'
jz save
cmp bl, 'e'
jz save
cmp bl, 'i'
jz save
cmp bl, 'o'
jz save
cmp bl, 'u'
jz save
cmp bl, 'A'
jz save
cmp bl, 'E'
jz save
cmp bl, 'I'
jz save
cmp bl, 'O'
jz save
cmp bl, 'U'
jz save
inc si
loop search
end:
mov ah,9
mov dx,offset msg1
int 21h
mov ah,2
mov dl, countV
add dl,48
int 21h
ret
save:
inc countV
inc si
jmp search:
ret
str1 db "Hi I am Fahim$"
countV db 0
msg1 db "Total number of vowel are: $"

ret




