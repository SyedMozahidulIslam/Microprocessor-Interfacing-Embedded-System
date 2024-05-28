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



