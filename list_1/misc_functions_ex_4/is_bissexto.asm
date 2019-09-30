; ----------------------------------------------------------------------------------------
; verifica se o valor do ano passado como parametro e bissexto
; em C: int is_bissexto(int ano);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		is_bissexto

is_bissexto:	
		mov		eax, edi
		xor		edx, edx
		mov		ebx, 400
		div		ebx
		cmp		edx, 0
		je		bissexto
		mov		eax, edi
		xor		edx, edx
		mov		ebx, 100
		div		ebx
		cmp		edx, 0
		je		not_bissexto
		mov		eax, edi
		xor		edx, edx
		mov		ebx, 4
		div		ebx
		cmp		edx, 0
		ja		not_bissexto
bissexto:
		ret
not_bissexto:
		xor		rax, rax
		ret
