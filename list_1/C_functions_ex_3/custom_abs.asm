; ----------------------------------------------------------------------------------------
; Recebe um valor e retorna o valor absoluto (sem sinal)
; ----------------------------------------------------------------------------------------

				format elf64

				section 	'.text'
				public 		custom_abs

custom_abs:		
				mov			eax, edi             
				test		eax, eax
				jns			positivo
				neg			eax
positivo:
				ret
				   


