#include <stdio.h>

extern int is_primo(int num);
extern int is_bissexto(int ano);
extern int fibonacci(int num);
extern void bubble_sort(int *vetor, int tamanho);

int main(){
    int n = 5;
    is_primo(2) ? printf("Primo!\n") : printf("Nao Primo!\n");
    is_primo(3) ? printf("Primo!\n") : printf("Nao Primo!\n");
    is_primo(7) ? printf("Primo!\n") : printf("Nao Primo!\n");
    is_primo(8) ? printf("Primo!\n") : printf("Nao Primo!\n");
    is_primo(13) ? printf("Primo!\n") : printf("Nao Primo!\n");
    is_primo(16) ? printf("Primo!\n") : printf("Nao Primo!\n");

    for(int i = 0; i < 15; i++)
         printf("%d \n", fibonacci(i));

    // int vetor[6] = {3,5,1,7,6,2};
    // bubble_sort(vetor, 6);

    // for(int i = 0; i < 6; i++)
    //      printf("%d \n", vetor[i]);
    
    printf("%d\n", is_bissexto(2020));
    printf("%d\n", is_bissexto(1586));
    printf("%d\n", is_bissexto(1923));
    printf("%d\n", is_bissexto(2000));

    return 0;
}