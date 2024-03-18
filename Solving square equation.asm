
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; Find a2+ b2+ c=?

org 100h

mov ax, a
mov bx, a
mul bx

mov res, ax

mov ax, b
mov cx, b
mul cx

mov res1, ax

mov dx, c
mov ax, res
add ax, res1
add ax, dx
mov res2, ax


ret  

a dw 3
b dw 2
c dw 1
res dw 0
res1 dw 0
res2 dw 0



