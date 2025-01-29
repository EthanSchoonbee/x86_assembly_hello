; AUTHOR: Ethan Schoonbee
; CREATED: 29-01-2025
; EDITED: 29-01-2025

; COMPILE AND RUN THE PROGRAM:
;	(1) Assemble and link the code
;		- use nasm to assemble it into an object file:
;		[nasm -f elf32 hello.asm -o hello.o]  
;			>> '-f elf32' tells 'nasm' to generate an object file in the 32-bit ELF format
;			>> '-o hello.o' specifies the output file
;	(2) Link the object file and create an executable
;		- use gcc to accomblish this
;		[gcc -m32 -nostartfiles hello.o -o hello]
;			>> '-m32' ensures that you are compiling for a 32-but target
;			>> 'hello.o' is your object file from the previous step
;			>> '-o hello' specifies the output executable
;	(3) Run the program
;		[./hello]

;//////////////////////////////////////////////////////////////////////////////////////////////////////

; Section to define initalised data
; 	- variables, constants, strings, etc
; 	- .data is reserved for variabels used by the program

section .data
	hello db 'Hello World!',0

	; Declare a string and null-terminate it
	; 	- hello >> label to refer to the memory loction
	; 	- db    >> Define-Byte instructs the assembler to allocate memory for data that follows
	; 	- 'Hello World!' >> String to save
	; 	- 0 >> null terminator to mark the ened of a string

;//////////////////////////////////////////////////////////////////////////////////////////////////////

; Section where executable code (instructions) are written (program logic)
section .text
	global _start

	; Entry point to the application
	; 	- _start >> label for the entry point. Tells the system where to start executing code when launched
	; 	= global >> makes the _start label accessible to the linker. Tells the assembler and linker that _start
	;			  	is the program entry point.

;//////////////////////////////////////////////////////////////////////////////////////////////////////

; Program entry point (as defined in the .start section)
; 	- Writes the defined string (.data hello) to the stdout (console)
_start:
	
	mov eax, 4		; syscall number for sys_write

	; Move the value 4 into the eax register
	; 	- 4 is the system call number for 'sys_write'
	;	- Tells linux kernel to write some data to a file or output

	mov ebx, 1		; file descriptor 1 (stdout)

	; Move the value 1 into ebx register
	;	- 1 is the file descriptor for stdout (standard output) usually the console
	;	- in linux, 0 is stdin (input), 1 is stdout (output), and 2 is stderr (error output)

	mov ecx, hello	; pointer to the string to write

	; Move the address of string "Hello World!" (hello) into the ecx register
	;	- the ecx register will hold the pointer (memory address) of the string
	;	  we want to write to output

	mov edx, 13		; length of the string

	; Move the value 13 into the edx register
	;	- the number 13 is the length of string "Hello World!" including punctuation and
	;	  spaces but excluding the null terminator 0

	int 0x80		; invoke syscall

	; An interrupt instructuion
	;	- triggers a system call to the linux kernel
	;	- the kernel will look to the value of eax to figure out what system call to make
	;	  and then it will use the values in the other registers (ebx, ecx, edx) to complete
	;	  the operation
	;	- in this case it makes a system call to sys_write, which writes data (the string) to
	;	  the file descriptor (stdout)

;//////////////////////////////////////////////////////////////////////////////////////////////////////

	; Exit the program
	mov eax, 1 		; syscall number for sys_exit

	; Move the value 1 into the eax register
	;	- 1 is the sytem call number for 'sys_exit'
	;	- tells the linux kernel we want to close the program

	xor ebx, ebx	; return code 0

	; Use the XOR (exclusive OR) operation to set ebx to 0
	;	- XORing any value with itself results in 0
	;	- ebx will hold the exit status code (returning 0) which means the program has run successfully
	;	  without errors

	int 0x80		; invoke syscall		

	; Use the interrupt instruction again to trigger a system call
	;	- this time the system call number in eax corresponds to 'sys_exit'
	;	- the program will terminate

;__________________________________....oooOO0_END_OF_FILE_0OOooo....__________________________________