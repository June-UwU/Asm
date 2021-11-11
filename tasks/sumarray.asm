;loop and the sum of arrays with loop instructions

INCLUDE Irvine32.inc

.data
	arraydw		DWORD		100h,200h,300h

.code
main PROC
	mov		esi,OFFSET arraydw				; pointing to the arraydw
	mov 	ecx,LENGTHOF arraydw			;size of the length
	mov		eax,0
L1:
	add		eax,[esi]
	add		esi,TYPE arraydw
	loop	L1
	call	DumpRegs
	exit
main ENDP
END main