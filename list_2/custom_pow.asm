; funcao que eleva o double x para o inteiro sem sinal y, caso possua sinal retorna 1 
; Em C: double custom_pow(double x, int y)

		format elf64
		section '.text'
		public	custom_pow
custom_pow:
		mov		ecx, edi
		cmp		ecx, 1
		je		pow_return
		jl		pow_zero
		dec		ecx
		movsd		xmm1, xmm0
pow_calculo:
		mulsd		xmm0, xmm1
		loop		pow_calculo
pow_return:
		ret
pow_zero:
		mov		rax, 1
		cvtsi2sd	xmm0, rax
		jmp		pow_return
		