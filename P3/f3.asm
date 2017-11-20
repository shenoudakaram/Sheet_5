.586
INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
	len  DWORD ?
	wid  DWORD ?
	prompt1 BYTE "Enter Length",0
	prompt2 BYTE "Enter Width",0
	string BYTE 20 DUP(?)
	Area   BYTE 20 DUP(?)
	resultlbl BYTE "The Area Is: ",0
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV len,eax
		input prompt2,string,40
		atod string
		MOV wid,eax

		add len,eax ;length *= width
		MOV ebx,len
		imul ebx,2
		dtoa Area,ebx
		output resultlbl,Area

		MOV eax,0
		ret
	_MainProc ENDP
END