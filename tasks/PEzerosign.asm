;setting zero flags and sign flags using add and sub

INCLUDE Irvine32.inc

.386p

.data

.code
main PROC
	mov 		eax,0				;setting sign flag
	sub			eax,1
	call 		DumpRegs
	add			eax,1				;setting zero flags
	call 		DumpRegs
	exit
main ENDP
END main