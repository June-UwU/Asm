;loop copying from source string to another mem example

INCLUDE Irvine32.inc

.data
	stringsrc	BYTE	"this is the source string",0
	stringdest	BYTE	SIZEOF stringsrc DUP(0)
.code
main PROC
	mov		ecx,LENGTHOF stringsrc
	mov 	esi,0
L1:
	mov		al,stringsrc[esi]
	mov 	stringdest[esi],al
	add		esi,TYPE stringsrc
	call	DumpRegs
	loop	L1
	call	DumpRegs
	exit
main ENDP
END main