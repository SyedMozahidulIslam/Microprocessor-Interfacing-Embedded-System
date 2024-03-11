
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx 5

lea si, arr
mov al, [si]
mov element, al


inc si
mov al, [si]
mov element, al

inc si

ret

arr db 1,2,3,4,5
element db 0



