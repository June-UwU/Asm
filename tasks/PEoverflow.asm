;setting over flow  flags

INCLUDE Irvine32.inc

.386p

.data
.code
main PROC
	mov			eax,0
	sub			eax,1
	add			eax,1
	call 		DumpRegs
	exit
main  ENDP
END main