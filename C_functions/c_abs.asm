                format  elf64
                
                mov     eax, edi
                neg     edi
                cmovns  eax, edi
                ret