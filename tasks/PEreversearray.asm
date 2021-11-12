;reversing an array 

INCLUDE Irvine32.inc

.data
	arrayw		DWORD	1000h,2000h,3000h
	temparray	DWORD 	SIZEOF arrayw	DUP(0)

.code
main PROC
	mov 	ecx,LENGTHOF arrayw
	mov		ebx,0
TEMPCPY:
	mov 	eax,arrayw[ebx]			;esi[ebx] : this is considered invalid use of register
	mov 	temparray[ebx],eax
	add 	ebx,TYPE arrayw
	loop	TEMPCPY

MAINCPY:
	mov 	eax,temparray[ebx]		
	mov 	arrayw[ebx],eax
	add 	ebx,TYPE arrayw
	loop	TEMPCPY
	exit
main ENDP
END main