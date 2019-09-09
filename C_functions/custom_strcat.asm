; ----------------------------------------------------------------------------------------
; Recebe duas strings e adiciona a src no final da string dest, sem sobreescrita
; em C: char *strcat(char *dest, const char *src)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strcat
                include     'custom_strlen.inc'
                include     'custom_strcpy.inc'

custom_strcat:	
                mov         rax, rdi ;Move o ponteiro para a primeira string para o registrador de retorno
                push        rax ; Colocar ponteiro na pilha antes de chamar a funcao de len
                push        rsi ; Coloca ponteiro na pilha antes de chamar a funcao
                call        custom_strlen_inc
                pop         rsi ; Pega a segunda string da pilha
                pop         rdi ; Pega a primeira string da pilha
                push        rdi ; Retorna a primeira string pra pilha (O inicio da primeira string)
                add         rdi, rax ;Soma o tamanho da primeira string no ponteiro para chegar ao final da string
                call        custom_strcpy_inc
                pop         rax
                ret
; move_to_end:
;                 cmp         byte [rdi], 0
;                 je          concat
;                 inc         rdi
;                 jmp         move_to_end
; concat:
;                 cmp         byte [rsi], 0
;                 je          retornar
;                 mov         r9l, [rsi]
;                 mov         byte [rdi], r9l
;                 inc         rdi  
;                 inc         rsi
;                 jmp         concat
; retornar:       
;                 mov         byte [rdi], 0
;                 ret