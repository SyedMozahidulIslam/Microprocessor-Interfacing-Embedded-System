
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea bx, a

add word ptr [bx], 11

ret 

a dw 6




