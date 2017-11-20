.586
.MODEL FLAT
INCLUDE io.h
cr EQU  0dh
lf EQU  0ah
.STACK 4096
.DATA
	prompt BYTE "Result :)",0
	prompt1  BYTE  "enter grade  1 ",0
	prompt2 BYTE  "enter weight 1 ",0
	prompt3 BYTE  "enter grade  2 ",0
	prompt4 BYTE  "enter weight 2 ",0
	prompt5 BYTE  "enter grade  3 ",0
	prompt6 BYTE  "enter weight 3 ",0
	prompt7 BYTE  "enter grade  4 ",0
	prompt8 BYTE  "enter weight 4 ",0
	prompt9 BYTE "Result :)",0
	grade1 DWORD ?
	grade2 DWORD ?
	grade3 DWORD ?
	grade4 DWORD ?
	weight1 DWORD ?
	weight2 DWORD ?
	weight3 DWORD ?
	weight4 DWORD ?
	ws DWORD ?
	sw DWORD ?
	wa DWORD ?
	string   BYTE 11 DUP(?),0
	m   BYTE "weighted sum: "
	wss BYTE 11 DUP(?)
	    BYTE cr,lf,"sum of weights: "
	sws BYTE 11 DUP(?)
	    BYTE cr,lf,"weighted average: "
	was BYTE 11 DUP(?),0

.CODE
_MainProc PROC 
	input prompt1 ,string,11
	atod string
	mov grade1,eax

	input prompt2 ,string,11
	atod string
	mov weight1,eax

	input prompt3 ,string,11
	atod string
	mov grade2,eax

	input prompt4 ,string,11
	atod string
	mov weight2,eax

	input prompt5 ,string,11
	atod string
	mov grade3,eax

	input prompt6 ,string,11
	atod string
	mov weight3,eax

	input prompt7 ,string,11
	atod string
	mov grade4,eax

	input prompt8 ,string,11
	atod string
	mov weight4,eax

	mov eax,grade1
	mul weight1
	add ws,eax
	mov eax,grade2
	mul weight2
	add ws,eax
	mov eax,grade3
	mul weight3
	add ws,eax
	mov eax,grade4
	mul weight4
	add ws,eax

	dtoa wss,ws

	mov eax,0
	add eax,weight1
	add eax,weight2
	add eax,weight3
	add eax,weight4
	mov sw,eax

	dtoa sws,sw

	mov eax,ws
	div sw

	dtoa was,eax
	output prompt9,m

	mov eax,0 
	ret

_MainProc ENDP

END