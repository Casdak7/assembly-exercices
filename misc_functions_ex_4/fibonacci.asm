; ----------------------------------------------------------------------------------------
; Retorna o n-esimo termo da sequencia de fibonacci
; em C: int fibonacci(int n); Instrução de maquina XADD (Exchange and add) 
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		fibonacci
fibonacci:
		xor		eax, eax
		cmp		edi, 0
		jl		retornar
		mov		r8d, 1
		xor		ecx, ecx
		; cmp		edi, 1
		; ja		acima
		; mov		eax, 1
		; ret
acima:	
		cmp		ecx, edi
		je		retornar
		xadd	eax, r8d
		; mov		eax, r9d
		inc		ecx
		jmp		acima
retornar: 
		ret
