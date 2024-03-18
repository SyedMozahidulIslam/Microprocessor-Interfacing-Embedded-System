
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Find (a/b)*c + (a%d) = ?

mov al, a
mov bl, b

div bl

mov q, al

mov al, a
mov cl, d

mov ah, 0
div cl

mov r, ah

mov al, q
mov bl, c

mul bl

mov m, al

mov al, m
mov bl, r
add al, bl
 

mov res, al 

ret

a db 110
b db 20
c db 33
d db 11
r db 0
q db 0
m db 0
res db 0
