.586
INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
	prompt1 BYTE "Enter number of pennies",0
	prompt2 BYTE "Enter number of nickles",0
	prompt3 BYTE "Enter number of dimes",0
	prompt4 BYTE "Enter number of quarters",0
	prompt5 BYTE "Enter number of fifty_cent pieces",0
	prompt6 BYTE "Enter number of dollars",0
	prompt7 BYTE "the result is:",0
	pd DWORD ?
	t  DWORD ?
	string  BYTE 11 DUP(?),0
	m  BYTE "The toatal you enter is "
	rd BYTE 11 DUP(?)
	   BYTE "  Dollar and "
	rp BYTE 11 DUP(?)
	   BYTE "  Pennies NUM ",0

.CODE
_MainProc PROC 
	input prompt1,string,11
	atod string
	mov pd,eax

	
	input prompt2 ,string,11
	atod string
	mov t,eax
	mov eax,5
	mul t
	add pd,eax
	
	input prompt3 ,string,11
	atod string
	mov t,eax
	mov eax,10
	mul t
	add pd,eax

	input prompt4,string,11
	atod string
	mov t,eax
	mov eax,25
	mul t
	add pd,eax

	input prompt5 ,string,11
	atod string
	mov t,eax
	mov eax,50
	mul t
	add pd,eax

	input prompt6 ,string,11
	atod string
	mov t,eax
	mov eax,100
	mul t
	add eax,pd
	mov ebx,100
	div ebx


	dtoa rp,edx
	dtoa rd,eax
	output prompt7,m

	mov eax,0 
	ret

_MainProc ENDP		
END