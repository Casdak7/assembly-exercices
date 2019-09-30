; ----------------------------------------------------------------------------------------
; Ordena um vetor atraves do metodo bolha
; em C: void bubble_sort(int *vet1, int tamanho);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		bubble_sort
bubble_sort:
		sub		esi, 1		; Subtrai em 1 o tamanho do vetor
		mov		ecx, -1
		mov		r8, rdi
next:
		inc		ecx
		cmp		ecx, esi
		je		return
		xor		eax, eax	; Zera o eax
		mov		rdi, r8
sort:
		cmp		eax, esi	; Compara eax com esi
		je		next		; Caso seja igual, acabou o vetor
		mov		r9d, [rdi + 4]	; Move o proximo item do vetor para r9d
		cmp		[rdi], r9d	; Compara os dois itens do vetor
		jbe		no_exchange	; Caso o primeiro seja menor ou igual ao segundo, nao troca
		xchg		r9d, [rdi]	; Troca os dois itens de lugar
		mov		[rdi + 4], r9d  ; Move o item do registrador para a memoria no espaco correto
no_exchange:
		inc		eax
		add		rdi, 4
		jmp		sort
return:
		ret