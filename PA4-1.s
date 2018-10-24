@ Ben Terry
@ Programming Assignment 4 - Sums integers between two values
@ 23 October 2018

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	@ Load startval -> R2
	LDR	R3, =endval	@ get addr of endval
	LDR	R3, [R3]	@ Load endval -> R3
	@-------------
	@ Your code begins here
	@ Your code must put the final answer
	@ in R1.
	@-------------

	MOV r1, #0	@ r1 = 0
_loop:
	CMP r3, r2	@ Compare if r3 = r2
	ADD r1, r1, r2	@ Add r1 + r2, store in r1
	ADD r2, r2, r2	@ Add r2 + r2, store in r2
	BGT _loop	@ Branch if greater than



	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}

.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
