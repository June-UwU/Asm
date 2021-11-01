;16 bit substraction program

INCLUDE Irvine32.inc

.386p

.data
							;declaring variables
	num1	WORD 	1000h
	num2	WORD 	2000h
	num3	WORD 	4000h

.code
main PROC
	movzx 	eax,num3		;zero extending for the obvious
	sub 	ax,num2
	call 	DumpRegs
	sub 	ax,num1
	call 	DumpRegs
	exit
main ENDP
END main
