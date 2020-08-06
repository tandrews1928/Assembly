; Author: Tyler Andrews


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.DATA


.CODE

main PROC
	MOV BX, 0
	
	mov AX, 123

	MOV DX, 10

	LOOP1:
		mov AH, 0

		div DL

		mov BL, AH

		push BX

		cmp AL, DL

		jg LOOP1

		mov AH, 0
		
		push AX
			   		 	  

	INVOKE ExitProcess, 0

main ENDP

END main