; ----------------------------------------------------------------------------------------
; Recebe um ponteiro para um espaco de memoria, um valor, e uma quantidade de bytes para ser preenchido com o valor informado
; em C: void *memset(void *ptr, int x, size_t n);
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_memset

custom_memset:	
                mov         rax, rdi
                xor         rcx, rcx
                mov         ecx, edx ; int n, quantidade de bytes para ser preenchido com mesmo valor
                jecxz       retornar
put_x:
                mov         [rdi], sil
                inc         rdi
                loop        put_x
retornar:       
                ret

