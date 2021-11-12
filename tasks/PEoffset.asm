;direct offset addressing of memory 

INCLUDE Irvine32.inc

.386p

.data
	Uarray		WORD		1000h,2000h,3000h,4000h
	Sarray		SWORD		-1,-2,-3,-4

.code
main PROC
;unsigned value exchange
	mov 	esi,OFFSET Uarray
	mov 	eax,[esi]
	add 	esi,TYPE Uarray
	mov 	ebx,[esi]
	add 	esi,TYPE Uarray
	mov 	ecx,[esi]
	add 	esi,TYPE Uarray
	mov	 	edx,[esi]
	call 	DumpRegs

;signed value extended exchange
	mov 	esi,OFFSET Sarray
	mov		eax,[esi]
	add 	esi,TYPE Sarray
	mov		ebx,[esi]
	add 	esi,TYPE Sarray
	mov		ecx,[esi]
	add 	esi,TYPE Sarray	
	mov		edx,[esi]
	add 	esi,TYPE Sarray
	call	DumpRegs
	exit
main ENDP
END main