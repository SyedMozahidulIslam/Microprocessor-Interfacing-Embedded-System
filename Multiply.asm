
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 7
mov dl, 5

mul dl

mov res, al

ret

res db 0 


