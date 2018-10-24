@ Ben Terry
@ Programming Assignment 4 - Compute Factorial
@ 23 October 2018

	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	LDR	R0, =prompt	@ Get address of prompt
	BL	printf		@ Print prompt to screen
	LDR	R0, =in		@ Get addr of input format string
	LDR	R1, =n		@ Get addr of n
	BL	scanf		@ Put value in n using scanf
	LDR	R0, =n		@ Addr of n into R0
	LDR	R0, [R0]	@ n is now in R0
	@-------------
	@ Your code goes here.  Put n! in R2
	@-------------

	MOV r1, #1	@ r1 = 1
	MOV r3, #1	@ r3 = 1
	CMP r0, #0	@ r0 = 0
	MOV r2, #1	@ r2 = 1
_loop:
	CMP r1, r0		@ Compares if r2=r3
	MULLE r2, r2, r1	@ Multiply r2 * r1 if less than, store r2
	ADDLE r1, r1, #1	@ Adds r1 + 1 and store in r1
	BLE _loop		@ Branch if less than
_end:


	@-------------
	@ Do NOT alter code past this line.
	@-------------
	MOV	R1, R2
	LDR	R0, =out
	BL 	printf
	POP	{PC}
	
.data
n:	.word 0
prompt:	.asciz "Enter n: "
in:	.asciz "%d"
out:	.asciz "factorial is: %d\n"

