;
; Transforma um valor em graus para radianos
; em C: float grdtorad(float degrees);

		format elf64
		section '.text'
		public	grdtorad

grdtorad:
		sub			rsp, 4			; aloca espaco no topo da pilha
		fldpi
		movss		xmm1, xmm0
		fstp		dword[rsp]
		movss		xmm0, dword[rsp]
		mulss		xmm0, xmm1
		mov			eax, 180		; Move o valor inteiro para 
		cvtsi2ss	xmm1, eax
		divss		xmm0, xmm1 		; divide o valor em xmm1 por xmm2 e armazena em xmm1 
		add		rsp, 4				; retorna espaco para a pilha
		ret
