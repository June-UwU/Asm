;string copy backward 

INCLUDE Irvine32.inc

.386p
.data
	source		BYTE 	"this is the source string",0
	target 		BYTE	SIZEOF source DUP(0)
.code
main PROC
	
main ENDP
END main