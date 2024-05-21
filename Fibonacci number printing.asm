org 100h 

mov ah, 9
mov dx, offset str1 
int 21h


mov ah, 1
int 21h
sub al, 48 


mov ah, 0
mov n, ax 


lea si, arr  
mov cx,n
sub cx, 2  

mov [si], 0 
inc si      
mov [si], 1 
inc si     

start: 
sub si, 2  
mov al, [si]

inc si     
mov dl, [si] 

add al, dl 
inc si
mov [si], al 

inc si

Loop start  


mov ah, 9
mov dx, offset str3 
int 21h 


lea di, arr
mov cx,n

start2:
mov dl, [di]
add dl, 48
  
mov ah, 2
int 21h

inc di
Loop start2 
  


ret

arr db 9 dup(0)

str1 db "Enter the size of the array = $"   
str2 db 13, 10, "Enter the elements = $"
str3 db 13, 10, "the array = $" 

n dw 0