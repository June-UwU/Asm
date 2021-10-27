; EQU directives 

INCLUDE Irvine32.inc

.386p

.data

	text 		EQU 	<"this is a test text",0>
	testsize	EQU 	( $ - text )
	expr 		EQU 	3 + 2
	symbol		EQU 	text

	prompt 	   		BYTE 		text	;creates a null terminated char string
	expression 		DWORD 		expr
	sym 			BYTE 		symbol

.code
main PROC
	mov ecx,expr 			;can i do this does it work like a normal macro..?
	mov ebx,expression		;would it  evaluate the expression both times
	call DumpRegs  			;not including the byte pointer call since I still don't know how it works
	exit
main ENDP
END main


;there is also and TEXTEQU directive for text data and expressions