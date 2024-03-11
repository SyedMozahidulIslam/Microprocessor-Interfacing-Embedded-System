
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, arr1
lea di, arr2
add di, 4

mov cx, 5

start:
mov al, [si]
mov [di], al
inc si
dec di
LOOP START

mov sum, bl


ret

arr db 1,2,3,4,5
sum db 0



