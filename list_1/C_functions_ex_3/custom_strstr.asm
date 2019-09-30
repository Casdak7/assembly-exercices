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
                mov         esi, r9d            ; Move para esi a primeira letra da string rsi
                call        custom_strchr_inc   ; Procura a primeira ococrrencia dessa primeira letra
                cmp         rax, 0              ; Testa se o retorno da funcao chamada foi nulo
                je          str_retornar        ; Pula para o retorno com nulo caso o retorno seja nulo
                pop         rdi                 ; Tira da pilha o ponteiro para a haystack
                pop         rsi                 ; Tira da pilha o ponteiro para o needle
                push        rsi                 ; Volta para a pilha o needle original
                mov         rdi, rax            ; Move o ponteiro encontrado da primeira letra do needle no haystack
str_testa_haystack:
                cmp         byte [rsi], 0       ; Confere se chegamos ao final do Haystack
                je          str_sucesso         ; Caso tenha chegado ao final sem erros, existe a substring
                mov         r8b, byte [rsi]     ; Move o caracter do needle para um registrador para comparar, pois nao se pode comparar dois espacos de memoria
                cmp         byte [rdi], r8b     ; Compara o caracter do needle com o caracter do haystack
                jne         str_pre_percurso    ; Caso nao seja igual, volta para procurar o proximo lugar em que a primeira letra do needle aparece no haystack
                cmp         byte [rdi], 0       ; Checa se chegou ao final do haystack
                je          str_falha           ; Se sim, a needle nao se encontra no haystack
                inc         rdi                 ; Vai para o proximo caracter do haystack
                inc         rsi                 ; Vai para o proximo caracter da needle
                jmp         str_testa_haystack  ; Repete o procedimento para testarmos estes novos caracteres
                
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