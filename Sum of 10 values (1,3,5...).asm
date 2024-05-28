org 100h

lea si, arr 
mov [si], 1  

  
mov bl, 2    
 
mov cx, 9  
 
mov dl, [si]
 
loop1: 
mov al, [si] 
add al, bl 
 
inc si   
mov [si], al 
add dl,al    
loop loop1 
  
mov sum, dl 
 
 
ret 
arr db 10 dup(0) 
sum db 0



