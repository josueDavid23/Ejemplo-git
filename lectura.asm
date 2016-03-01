section .data

msg db 0xA,0xD,"Ingrese un numero mae:"
len equ $ - msg
msg1 db 0xA,0xA,"Ingrese otro numero mae:"
len1 equ $ - msg1

msg2 db 0xA,0xD,"el numero ingresado es:"
len2 equ $ - msg2

section .bss
 num resb 2
 num1 resb 2


 section .text

global _start
 


 _start:


 	mov eax,4
 	mov ebx, 1
 	mov ecx, msg
 	mov edx, len
 	int 0x80


 	mov eax,3
 	mov ebx,0
 	mov ecx,num
 	mov edx,2

 	int 0x80


 	mov eax,4
 	mov ebx, 1
 	mov ecx, msg2
 	mov edx, len2
 	int 0x80


 	mov eax,4
 	mov ebx, 1
 	mov ecx, num
 	mov edx, 2
 	int 0x80


 	mov eax,4
 	mov ebx, 1
 	mov ecx, msg1
 	mov edx, len1
 	int 0x80

 	mov eax,3
 	mov ebx,0
 	mov ecx,num1
 	mov edx,2

 	int 0x80

	mov eax,4
 	mov ebx, 1
 	mov ecx, msg2
 	mov edx, len2
 	int 0x80


 	mov eax,4
 	mov ebx, 1
 	mov ecx, num1
 	mov edx, 2
 	int 0x80






 	mov eax,1
 	int 0x80


