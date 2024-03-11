
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, arr
inc si
mov bl, 0
mov cx, 5

start:
mov al, [si]
add bl, al
add si, 2
LOOP START

mov sum, bl   


;take an array of size 10 and fill it up with random values, now find out the summations of those elements for which the index number is odd and store the summation in a variable

ret

arr db 0,1,2,3,4,5,6,7,8,9
sum db 0


