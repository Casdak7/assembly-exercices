;
; Calcula o valor de um polinomio, coeficientes devem ser informados do maior grau para o menor grau. Deve-se informar um 0 quando determinado grau nao se encontra no polinomio.
; em C: double polinomio(int grau, double *coeficientes, double x);

		format elf64
		section '.text'
		public	polinomio
		include	'custom_pow.inc'

polinomio:
		xor		rcx, rcx
		mov		ecx, edi
		jecxz		grau_0
		dec		ecx
		movsd		xmm2, xmm0		; move o valor de x para xmm2
		xorpd		xmm3, xmm3
calcular:	
		cmp		ecx, 0
		jl		return
		
		push		rcx
		push		rsi

		mov		edi, ecx		; move o grau de exponenciacao para o primeiro argumento inteiro
		
		call		custom_pow		; chama a funcao custom_pow

		pop		rsi
		pop 		rcx

		movsd		xmm1, qword[rsi]	; move o coeficiente para xmm1 para entao multiplicar
		mulsd		xmm0, xmm1		; multiplica o resultado do pow pelo coeficiente
		addsd		xmm3, xmm0		; soma o resultado da exponenciacao para o total
		movsd		xmm0, xmm2		; move o valor de x para o primeiro argumento novamente
		add		rsi, 8			; move o ponteiro 8 bytes para o proximo valor double dos coeficientes
		dec		ecx
		jmp		calcular		
return:
		movsd		xmm0, xmm3		; move o valor total para xmm0, que e o registrador de retorno
		ret
grau_0:	
		movsd		xmm0, qword[rsi]
		ret