org 100h

MOV AH, 1 
INT 21h 
SUB AL, 48 
MOV BL, AL  

MOV AH, 9 
MOV DX, offset newline
INT 21h 

MOV AH, 9 
MOV DX, offset str 
 
INT 21h 

MOV DL, BL 
ADD DL, 48 
MOV AH, 2 
INT 21h 
ret 
newline db 13, 10, "$"  
str db 13, 10, "The output is = $"

ret




