;show case of data related operations and transfers

INCLUDE Irvine32.inc

.386p

.data
	arraydw		WORD		1234h,2000h,3000h
	sizedw		DWORD		($ - arraydw)
	pointer		DWORD		arraydw 			;this essentially acts a pointer to arraydw
	ALIGN 		2								;byte aligning data labels and data
	aligntest 	WORD		?
.code
main PROC
	mov			eax,OFFSET arraydw				;gets the offset of the label form the entire segment
	mov			ebx,pointer						;pointer is 64 bits even though the data is 32 bits .386p play..?
	mov			edx,OFFSET aligntest
	call		DumpRegs
	movzx		bx,BYTE PTR [arraydw]			;ptr instructions works like casting and casts it to lower size vars / overides the declared size of any data
	movzx 		cx,BYTE PTR [arraydw + 1]		;ptr returns the address of the lower data type for the cast type
	call		DumpRegs
	mov 		eax,LENGTHOF arraydw			;length of the array
	mov			ebx,SIZEOF aligntest			;size of dword
	mov			ecx,SIZEOF arraydw				;gives the size of array
	mov			edx,TYPE arraydw    			;size of the array's data type
	call		DumpRegs
	exit
main ENDP
END main