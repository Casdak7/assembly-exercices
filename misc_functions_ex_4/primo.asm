; ----------------------------------------------------------------------------------------
; Verifica se um dado numero e primo ; Em EAX estara o quociente e em EDX estara o resto
; em C: int is_primo(int n);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		is_primo
is_primo:
		mov		ebx, 2
test_divisores:
		cmp		ebx, edi
		je		return
		xor		edx, edx
		mov		eax, edi
		div		ebx
		cmp		edx, 0
		je		not_primo
		inc		ebx
		jmp		test_divisores
not_primo:
		xor		eax, eax
		ret
return:
		mov		eax, 1
		ret