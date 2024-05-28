org 100h

lea si, arr

mov bl, 0
mov cx, 5

start:
mov al, [si]
add bl, al
inc si
LOOP START

mov sum, bl


ret

arr db 1,2,3,4,5
sum db 0



