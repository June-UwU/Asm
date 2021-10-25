TITLE 

INCLUDE Irvine32.inc

.386p

.data

.code
main PROC
	mov eax,40
	sub eax,32
	call DumpRegs
	exit
main ENDP
END main