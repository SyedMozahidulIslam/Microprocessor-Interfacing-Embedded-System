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

ret

arr db 0,1,2,3,4,5,6,7,8,9
sum db 0


