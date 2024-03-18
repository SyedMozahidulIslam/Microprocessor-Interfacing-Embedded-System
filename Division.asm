
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 110
mov bl, 20

div bl

mov q, al
mov r, ah

ret

q db 0
r db 0


