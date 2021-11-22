;Changing text color using Irvine color

INCLUDE Irvine32.inc

.386p

.data
    arrayb      BYTE        "poggers"

.code
main PROC
    mov         eax,1010b
    call        SetTextColor
    exit
main ENDP 
END main