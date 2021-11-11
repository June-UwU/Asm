;array traversal techniques and methods

INCLUDE Irvine32.inc

.386p

.data
	arrayb		BYTE		10h,20h,30h
	arrayw		WORD 		100h,200h,300h
	arraydw		DWORD		10000h,20000h,30000h

.code
main PROC
	movzx	 	esi,arrayb
	mov 		eax,[esi]
	mov			ebx,[esi + 1] 						;since one byte is the width of the array type
	call		DumpRegs
	movzx		esi,arrayw 							;using the word array
	mov 		eax,[esi]
	mov			ebx,[esi + 2]
	call 		DumpRegs
	mov 		esi,arraydw
	mov 		eax,[esi]
	mov 		ebx,[esi + 4]
	call 		DumpRegs

	;Direct addressing and offset register method

	mov 		esi,0
	movzx 		eax,[arrayb + esi]
	inc 		esi									;works because the size of bytes is one 
	movzx 		ebx,[arrayb + esi]
	call 		DumpRegs
	mov 		esi,0
	movzx		eax,[arrayw + esi]
	add 		esi,2
	movzx 		ebx,[arrayw + esi]
	call 		DumpRegs

	;TYPE offset addressing formula (nomal c array indexing formula)

	mov 		esi,2 * TYPE arraydw
	mov 		ecx,arraydw
	mov   		eax,arraydw[esi]
	call 		DumpRegs
	exit
main ENDP
END main