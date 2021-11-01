;instructions show case

INCLUDE Irvine32.inc

.386p

.data
	val1	WORD	1000h
	val2	WORD	2000h
	arrayb	BYTE	10h,20h,30h,40h,50h
	arrayw	WORD	100h,200h,300h
	arrayd	DWORD	10000h,20000h

.code
main PROC
	;movzx :move zero extend instruction
	mov 	bx,0A9Bh		;16 bit number assignment
	movzx	edx,bx			;zero extended move of 16 bit to 32 bit register
	movzx 	ecx,bl			;zero extended move of 8 bit to 32 bit register
	call	DumpRegs		;showing register values

	;movsx :move sign extend instruction

	mov 	bx,0A9Bh
	movsx	ecx,bx			;sign extended move of 16 bit to 32 bit register (two's compliment of the value)
	movsx	edx,bl			;sign extended move of 16 bit to 32 bit register (two's compliment of the value)
	call	DumpRegs

	;xchg :exchanging two values
	
	;direct-offset addressing(byte array)

	xchg	al,arrayb		
	xchg	bl,[arrayb + 1]	;
	call	DumpRegs

	;direct-offset addressing(word array)

	xchg	ax,arrayw		
	xchg	bx,[arrayw + 1]	;
	call	DumpRegs

;direct-offset addressing(dword array)

	xchg	eax,arrayd		
	xchg	ebx,[arrayd + 1]	;
	call	DumpRegs

	exit

main ENDP
END main

