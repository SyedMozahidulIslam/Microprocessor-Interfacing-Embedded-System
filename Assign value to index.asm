; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV arr1[0],11
MOV arr1[1],5
MOV arr1[2],6
MOV arr1[3],12

ret 

a dw 6 



arr db 1,2,3,4,5,6,7,8,9,10
arr1 db 5 dup(10)
arr2 db 5 dup(0,1,2)
arr3 db 'a', 'b', 'c'






