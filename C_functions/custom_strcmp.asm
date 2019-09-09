; ----------------------------------------------------------------------------------------
; Recebe duas strings e retorna <0 caso a primeira seja menor, >0 caso a primeira seja maior, e 0 caso tenham o mesmo tamanho
; em C: int strcmp(const char *str1, const char *str2)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strcmp
                include     'custom_strlen.inc'


custom_strcmp:		
                push        rdi
                mov         rdi, rsi
                call        custom_strlen
                mov         r9d, eax
                pop         rdi
                push        r9
                call        custom_strlen
                pop         r8d
                sub         eax, r8d
                ret

; count:
;                 cmp         byte [rdi], 0
;                 je          count_2
;                 inc         eax  
;                 inc         rdi
;                 jmp         count
; count_2:
;                 cmp         byte [rsi], 0
;                 je          retornar
;                 inc         r8d  
;                 inc         rsi
;                 jmp         count_2
retornar:       
                sub         eax, r8d
                ret