; ----------------------------------------------------------------------------------------
; Procura a primeira ocorrencia do character C na string char, caso encontre retorne um ponteiro para ela, senao retorna null
; em C: char *strchr(const char *str, int c)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strchr

custom_strchr:
                xor         rax, rax        ; Zera o acumulador
chr_percurso:
                cmp         byte [rdi], sil ; Testa se o character atual é igual ao procurado
                je          chr_sucesso
                cmp         byte [rdi], 0   ; Testa se atingiu o fim da string
                je          chr_retornar
                inc         rdi             ; Vai para o proximo byte de memoria
                jmp         chr_percurso
chr_sucesso:
                mov         rax, rdi        ; Move o ponteiro para o acumalador retornar
chr_retornar:       
                ret