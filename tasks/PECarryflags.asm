;setting carry flag from add instructions PROGRAM EXCERCISE 4.7

INCLUDE Irvine32.inc

.386p

.data

.code
main PROC 
	mov		eax,0			;setting eax for round about of eax
	dec		eax				;substracting one from eax to  set max value
	call 	DumpRegs		;adding one through inc instructions will not set carry flags
	add 	eax,1			;adding one to induce overflow
	call 	DumpRegs
	exit
main ENDP 
END main