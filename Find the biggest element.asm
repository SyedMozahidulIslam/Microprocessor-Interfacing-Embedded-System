org 100h

mov ah, 9
mov dx, offset str1
int 21h


mov ah, 1
int 21h
sub al, 48
mov [n], al
mov cl, al 

lea si, arr


mov ch, 0  

read_elements:
mov ah, 1
int 21h
sub al, 48
mov [si], al
inc si
loop read_elements


lea si, arr


mov al, [si]
mov largest, al


mov cl, [n]  
dec cl     

next_element:
inc si      
mov al, [si]
cmp al, largest
jbe skip    
mov largest, al 

skip:
loop next_element


mov ah, 9
mov dx, offset str2
int 21h


mov dl, largest
add dl, 48
mov ah, 2
int 21h

ret

str1 db "Enter the size of the array (1-9): $"
str2 db 13, 10, "The largest element is: $"

arr db 10 dup(0)
n db 0
largest db 0