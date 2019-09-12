; ----------------------------------------------------------------------------------------
; Procura a primeira ocorrencia do character C na string char, caso encontre retorne um ponteiro para ela, senao retorna null
; em C: char *strchr(const char *str, int c)
; ----------------------------------------------------------------------------------------

				public 		custom_strchr_inc

custom_strchr_inc:
                xor         rax, rax        ; Zera o acumulador
chr_percurso_inc:
                cmp         byte [rdi], sil ; Testa se o character atual é igual ao procurado
                je          chr_sucesso_inc
                cmp         byte [rdi], 0   ; Testa se atingiu o fim da string
                je          chr_retornar_inc
                inc         rdi             ; Vai para o proximo byte de memoria
                jmp         chr_percurso_inc
chr_sucesso_inc:
                mov         rax, rdi        ; Move o ponteiro para o acumalador retornar
chr_retornar_inc:       
                ret