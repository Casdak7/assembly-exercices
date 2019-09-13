; ----------------------------------------------------------------------------------------
; Procura a primeira ocorrencia da string needle na string haystack e retorna um ponteiro para ela, caso nao encontre retorna null
; em C: char *strstr(const char *haystack, const char *needle)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strstr
                include     'custom_strchr.inc'

custom_strstr:
                push        rsi                 ; Coloca o ponteiro do needle na pilha
                push        rdi                 ; Coloca o ponteiro do haystack na pilha
str_percurso:                                   ; Percorre a haystack
                xor         r9, r9
                mov         r9b, byte [rsi]
                mov         esi, r9d            ; Move para rsi a primeira letra da string rsi
                call        custom_strchr_inc   ; Procura a primeira ococrrencia dessa primeira letra
                cmp         rax, 0              ; Testa se o retorno da funcao chamada foi nulo
                je          str_retornar        ; Pula para o retorno com nulo caso o retorno seja nulo
                pop         rdi                 ; Tira da pilha o ponteiro para a haystack
                pop         rsi                 ; Tira da pilha o ponteiro para o needle
                push        rsi                 ; Volta para a pilha o needle original
                mov         rdi, rax            ; Move o ponteiro encontrado da primeira letra do needle no haystack
str_testa_haystack:
                cmp         byte [rsi], 0                        
                je          str_sucesso
                mov         r8b, byte [rsi]
                cmp         byte [rdi], r8b
                jne         str_pre_percurso
                cmp         byte [rdi], 0
                je          str_falha
                inc         rdi
                inc         rsi
                jmp         str_testa_haystack
                
str_sucesso:
                pop         rdi
                mov         rax, rdi            ; Move o ponteiro para o acumalador retornar
                ret
str_retornar:   
                pop         rdi                 ; Remove da pilha para nao dar segmentation fault
                pop         rsi    
                ret
str_falha:      
                xor         rax, rax
                ret
str_pre_percurso:
                inc         rdi
                push        rdi
                jmp         str_percurso