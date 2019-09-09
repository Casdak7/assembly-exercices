; ----------------------------------------------------------------------------------------
; Recebe um caracter minusculo e retorna o mesmo caracter maiusculo
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_strtoul

custom_strtoul:		
				mov			al, dil
                cmp         al, 97
                jb          nao_minusculo  
                cmp         al, 122
                ja          nao_minusculo
				sub		    al, 32
nao_minusculo:
				ret