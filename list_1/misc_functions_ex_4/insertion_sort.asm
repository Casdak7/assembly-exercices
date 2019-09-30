; ----------------------------------------------------------------------------------------
; Ordena um vetor atraves do metodo de insercao
; em C: void insertion_sort(int *vet1, int tamanho);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		insertion_sort
insertion_sort:
		cmp		esi, 2	
		jb		return	
		xor		ecx, ecx		; Contador j
		push		rdi
next:	
		inc		ecx			
		cmp		ecx, esi	
		je		return		
		add		rdi, 4
		mov		r8d, dword[rdi]		;Chave
		mov		r9d, ecx		; contador i = j - 1
		dec		r9d
sort:
		pop		rbx
		push		rbx
		cmp		r9d, 0
		jl		end_of_for
		mov		rax, 4
		mul		r9d
		add		rbx, rax
		mov		rax, rbx
		cmp		dword[rax], r8d
		jle		end_of_for
		mov		ebx, dword[rax] ; move para registrador antes de mover para novo espaco de memoria
		mov		dword[rax+4], ebx
		dec		r9d
		jmp		sort
end_of_for:
		mov		dword[rax+4], r8d
		jmp		next
return:
		pop		rbx
		ret