; ----------------------------------------------------------------------------------------
; Recebe um ponteiro para um char e retorna o tamanho daquela string
; em C: size_t strlen(const char *str)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strlen

custom_strlen:	
                xor         eax, eax
count:
                cmp         byte [rdi], 0
                je          retornar
                inc         eax  
                inc         rdi
                jmp         count
retornar:       
                ret