;Teste se o comando div rcx gerara um erro

        format elf64
        public div_test
div_test:
        mov     rax, 4
        mov     rcx, 4
        div     rcx
        ret