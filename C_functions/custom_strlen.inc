; ----------------------------------------------------------------------------------------
; Recebe um ponteiro para um char e retorna o tamanho daquela string
; em C: size_t strlen(const char *str)
; ----------------------------------------------------------------------------------------
				public 		custom_strlen_inc

custom_strlen_inc:	
                xor         eax, eax
len_count_inc:
                cmp         byte [rdi], 0
                je          len_retornar_inc
                inc         eax  
                inc         rdi
                jmp         len_count_inc
len_retornar_inc:       
                ret