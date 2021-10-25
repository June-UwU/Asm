TITLE variable declarations

INCLUDE Irvine32.inc

.386
.data
	var1 DWORD 1000h
	var2 DWORD 2000h
	var3 DWORD 1500h
	finalword DWORD ?
.code
	main PROC
		mov eax,var1
		add eax,var2
		call DumpRegs
		sub eax,var3
		call DumpRegs
		mov finalword,eax
		exit
	main ENDP
	END main

 	
