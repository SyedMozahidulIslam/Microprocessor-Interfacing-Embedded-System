org 100h 

mov ah, 9 
mov dx, offset msg1 
int 21h 
 
mov ah, 1 
int 21h 
sub al, 48 

mov n, al
 
lea si, arr 
mov [si], 1  
mov bl, 2 

dec al   
mov ah, 0 
mov dx, ax
  
mov cx, dx 

loop1: 
mov al, [si] 
add al, bl 
inc si   
mov [si], al   
loop loop1 

ret 
msg1 db "Enter N: $" 
n db 0 
arr db 9 dup(0)




