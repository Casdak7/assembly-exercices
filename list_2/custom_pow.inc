; funcao que eleva o double x para o inteiro sem sinal y, caso possua sinal retorna 1 
; Em C: double custom_pow(double x, int y)

		public	custom_pow
custom_pow:
		mov		ecx, edi
		cmp		ecx, 1
		je		pow_return_inc
		jl		pow_zero_inc
		dec		ecx
		movsd		xmm1, xmm0
pow_calculo_inc:
		mulsd		xmm0, xmm1
		loop		pow_calculo_inc
pow_return_inc:
		ret
pow_zero_inc:
		mov		rax, 1
		cvtsi2sd	xmm0, rax
		jmp		pow_return_inc
		