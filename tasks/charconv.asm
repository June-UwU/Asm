;char conv algorithm showcased in irvine's book

INCLUDE Irvine32.inc

.386p

.data
	arrayb BYTE "this"

.code
main PROC
	mov 		ecx,LENGTHOF arrayb

L1:
	and			arrayb[ecx],11011111b
	loop 		L1
	and			arrayb[ecx],11011111b

	
	mov 		edx,OFFSET arrayb
	call 		WriteString
	exit		
main ENDP
END main