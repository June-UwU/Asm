; Symbolic Constanst,array sizes and number of elements

INCLUDE Irvine32.inc

.386p
.data
	array             DWORD 1,2,3,4
	arraysize         = ( $ - array )	;the dollar sign is symbol that indicates the current address of instructions
	arrayelmentcount  = arraysize / 4
	testsymbol        = 1000h

										;symbols that are assigned using '=' can be redefined  at any point of the program

	
.code
main PROC
	mov eax,arraysize
	mov ebx,arrayelmentcount
	mov ecx,testsymbol
	call DumpRegs
	exit
main ENDP
END main