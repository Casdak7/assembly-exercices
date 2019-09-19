; ----------------------------------------------------------------------------------------
; Verifica se um dado numero e primo
; em C: int is_primo(int n);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		is_primo
is_primo:
		cmp		rdi, 