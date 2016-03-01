section .data

msg db "la resta de 5  menos 4 es:", 0xA, 0xD
len equ $ - msg
msg1 db 0xA, 0xD,"la suma de 4 mas 5 es:",0xA,0xD
len1 equ $ - msg1
msg2 db 0xA,0xD,"Al decrementar 4 es:",0xA,0xD
len2 equ $-msg2


section .bss
	res resb 1

section .text
	global _start:


_start:

	mov eax,4 ; mae voy a escribir algo
	mov ebx,1 ; mae quiero que me lo muestre en pantalla
	mov ecx,msg; el mensaje
	mov edx,len ; largo del mensaje
	int 0x80 ; interrupcion

	mov eax,5 ; dar valor de 4
	mov ebx,4 ; dar valor de 5

	sub eax,ebx ; resta 
	add eax,'0' ; agregamos un espacio vacio para indicar que sera una cadena de caracteres
	mov [res],eax ; mae es como poner res = al resultado de la resta y se ponen corchetes para acceder al contenido del registro y no a la direccion

	mov eax,4  ; se hace el procedimiento de antes para imprimir e indicar al mae que quiero que lo muestre en pantalla
	mov ebx,1
	mov ecx, res
	mov edx,1

	int 0x80  ;llama al sistema de interrupciones
	
; ahora vamos hacer la suma

 	mov eax,4 ; mae voy a escribir algo
	mov ebx,1 ; mae quiero que me lo muestre en pantalla
	mov ecx,msg1; el mensaje
	mov edx,len1 ; largo del mensaje
	int 0x80 ; interrupcion

	mov eax,4 ; dar valor de 4
	mov ebx,5 ; dar valor de 5

	add eax,ebx ; suma 
	add eax,'0' ; agregamos un espacio vacio para indicar que sera una cadena de caracteres
	mov [res],eax ; mae es como poner res = al resultado de la resta y se ponen corchetes para acceder al contenido del registro y no a la direccion

	mov eax,4  ; se hace el procedimiento de antes para imprimir e indicar al mae que quiero que lo muestre en pantalla
	mov ebx,1
	mov ecx, res
	mov edx,1

	int 0x80  ;llama al sistema de interrupciones
	


	mov eax,4 ; mae voy a escribir algo
	mov ebx,1 ; mae quiero que me lo muestre en pantalla
	mov ecx,msg2; el mensaje
	mov edx,len2 ; largo del mensaje
	int 0x80 ; interrupcion

	mov eax,4 ; dar valor de 4
	dec eax ; decremetar quitar uno 
	add eax,'0' ; agregamos un espacio vacio para indicar que sera una cadena de caracteres
	mov [res],eax ; mae es como poner res = al resultado de la resta y se ponen corchetes para acceder al contenido del registro y no a la direccion

	mov eax,4  ; se hace el procedimiento de antes para imprimir e indicar al mae que quiero que lo muestre en pantalla
	mov ebx,1
	mov ecx, res
	mov edx,1

	int 0x80  ;llama al sistema de interrupciones




	mov eax,1 ;es la pausa
	int 0x80 ;salir


