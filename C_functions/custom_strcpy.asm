; ----------------------------------------------------------------------------------------
; Recebe um ponteiro para um char e retorna o tamanho daquela string
; em C: char *custom_strcpy(char *dest, const char *src)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strcpy

custom_strcpy:	
                mov         rax, rdi
copy:
                cmp         byte [rsi], 0
                je          retornar
                mov         r9l, [rsi]
                mov         byte [rdi], r9l
                inc         rdi  
                inc         rsi
                jmp         copy
retornar:       
                mov         byte [rdi], 0
                ret