.586
INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
	gradeN  DWORD ?
	
	prompt1 BYTE "Enter first grade",0
	prompt2 BYTE "Enter the second grade",0
	prompt3 BYTE "Enter the third grade",0
	prompt4 BYTE "Enter the four grade",0
	string BYTE 20 DUP(?)
	sum  BYTE 20 DUP(?)
	resdiv  BYTE 20 DUP(?)
	rem div  BYTE 20 DUP(?)
	resulsum BYTE "The sum Is: ",0
	resulavg BYTE "The avg Is: "
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV grade1,eax
		input prompt2,string,40
		atod string
		MOV grade2,eax
		input prompt3,string,40
		atod string
		MOV grade3,eax
		input prompt4,string,40
		atod string
		MOV grade4,eax
		mov eax,grade3
	    add grade4,eax
		mov eax,grade2
		add grade4,eax

		MOV ebx,grade4
		mov eax,grade1
		add ebx,eax
		

		
		MOV eax,0
		mov ebx,0
		mov eax,sum
		mov ebx,4
		div ebx
		mov avg1,eax
		mov avg2,ebx 
		dtoa sum,ebx
		output resulsum,sum
		output resulavg,avg1,avg2
		ret
	_MainProc ENDP
END