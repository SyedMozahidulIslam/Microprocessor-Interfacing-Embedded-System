; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV al,arr[4]
MOV arr2[0], al
MOV al,arr[3]
MOV arr2[1], al
MOV al,arr[2]
MOV arr2[2], al
MOV al,arr[1]
MOV arr2[3], al
MOV al,arr[0]
MOV arr2[4], al


ret 

arr db 1,2,3,4,5 
arr2 db 5 dup(0)






