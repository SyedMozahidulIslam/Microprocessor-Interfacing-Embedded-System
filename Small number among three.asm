
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, a
mov bx, b
mov dx, c

cmp ax, bx   
jl calc       

cmp bx, dx
jl calcu

mov res, dx
ret

calcu:
mov res, bx
ret 

calc: 
cmp ax, dx  
jl cal     

mov res, dx 
ret   

cal:
mov res, ax
 
ret

a dw 100
b dw 80
c dw 60 

res dw 0

ret




