; ----------------------------------------------------------------------------------------
; Recebe um ponteiro para um char e retorna o tamanho daquela string
; em C: char *custom_strcpy(char *dest, const char *src)
; ----------------------------------------------------------------------------------------
				public 		custom_strcpy_inc

custom_strcpy_inc:	
                mov         rax, rdi
cpy_copy_inc:
                cmp         byte [rsi], 0
                je          cpy_retornar_inc
                mov         r9l, [rsi]
                mov         byte [rdi], r9l
                inc         rdi  
                inc         rsi
                jmp         cpy_copy_inc
cpy_retornar_inc:       
                mov         byte [rdi], 0
                ret