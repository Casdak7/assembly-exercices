; ----------------------------------------------------------------------------------------
; Recebe um caracter minusculo e retorna o mesmo caracter maiusculo
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_toupper

custom_toupper:		
				mov			eax, edi
                cmp         eax, 97
                jl          nao_minusculo  
                cmp         eax, 122
                jg          nao_minusculo
				sub		    eax, 32
nao_minusculo:
				ret
				   


