
indef MAIN_H

#define MAIN_H

#include <stdarg.h function, to be called



	        section .data		; Data section, initialized variables

msg:		db "Hello, Holberton", 0 ; C string needs 0

fmt:	    	db "%s", 10, 0          ; The printf format, "\n",'0'



	        section .text		; Code section.



	        global main		; the standard gcc entry point

main:					; the program label for the entry point

	        push    rbp		; set up stack frame, must be alligned



		mov	rdi,fmt

		mov	rsi,msg

		mov	rax,0		; or can be  xor  rax,rax

	        call    printf		; Call C function



		pop	rbp		; restore stack



		mov	rax,0		; normal, no error, return value

		ret			; return

#include <stdio.h>

#include <unistd.h>



#define UNUSED(x) (void)(x)

#define BUFF_SIZE 1024



/* FLAGS */

#define F_MINUS 1

#define F_PLUS 2

#define F_ZERO 4

#define F_HASH 8

#define F_SPACE 16



/* SIZES */

#define S_LONG 2

#define S_SHORT 1



/**

 * struct fmt - Struct op

 *

 * @fmt: The format.

 * @fn: The function associated.

