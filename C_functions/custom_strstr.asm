; ----------------------------------------------------------------------------------------
; Procura a primeira ocorrencia da string needle na string haystack e retorna um ponteiro para ela, caso nao encontre retorna null
; em C: char *strstr(const char *haystack, const char *needle)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strstr
                include     'custom_strchr.inc'

custom_strstr:
                push        rdi
                push        rsi
str_percurso:                                   ; Percorre a haystack
                mov         rsi, [rsi]          ; Move para rsi a primeira letra da string rsi
                call        custom_strchr_inc   ; Procura a primeira ococrrencia dessa primeira letra
                cmp         rax, 0
                je          str_retornar
                pop         rdi                 ;
                pop         rsi                 ;
                push        rsi                 ;
                mov         rdi, rax            ;
str_testa_haystack:
                                         

                jmp         str_testa_haystack
                jmp         chr_percurso
str_sucesso:
                mov         rax, rdi            ; Move o ponteiro para o acumalador retornar
str_retornar:       
                ret