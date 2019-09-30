

		format elf64

		section 	'.data'

		section 	'.text'
		public 		custom_inc
custom_inc:
		inc		rdx
		inc		rax
		inc		rbx
		inc		rcx
		db 		48h, 0FFh, 0C2h
		;42		; 42 referencia opcode de inc dx e edx