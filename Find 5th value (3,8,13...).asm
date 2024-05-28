
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, arr
mov [si], 3 
  
mov bl, 5  

 
mov cx, 4 
 
loop1: 
mov al, [si] 
add al, bl 
 
inc si 
mov [si], al   
loop loop1 
  
mov al , arr[4] 
mov n, al 
 
 
ret 
arr db 5 dup(0) 
n db 0


