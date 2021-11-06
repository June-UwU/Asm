;Arethmetic ops showcase X86
;neg (negate ins) goes through the entire array or memory address

INCLUDE Irvine32.inc

.386p

.data
	arrayb		BYTE 		10h,20h,30h
	sizeab 		DWORD		($ - arrayb)
	arrayw 		WORD 		100h,200h,300h
	sizew 		DWORD		($ - arrayw)
	arraydw 	DWORD		1000h,2000h,3000h
	sizedw		DWORD		($ - arraydw)

.code
main PROC
	movzx		eax,arrayb
	call 		DumpRegs
	inc 		eax
	call 		DumpRegs
	dec			eax
	call 		DumpRegs
	add 		al,[arrayb + 1]				;add takes same size ops
	call  		DumpRegs
	add 		ax,arrayw   				;add takes same size ops
	call 		DumpRegs
	sub			eax,[arraydw + 2]
	call 		DumpRegs
	neg			eax
	neg			arrayw 						;what happens here..? entire array..? or the single address value
	movzx     	ebx,arrayw
	movzx  		ecx,[arrayw + 1]
	call 		DumpRegs
	exit
main ENDP
END main
