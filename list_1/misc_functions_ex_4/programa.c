#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void printArray(int vetor[], int tamanho){
    printf("[");
    for (int i = 0; i < tamanho; i++)
    {
        printf("%d", vetor[i]);
        if (i != (tamanho-1))
        {   
            printf(",");
        }
    }
    printf("]\n");
}

// extern int is_primo(int num);
// extern int is_bissexto(int ano);
// extern int fibonacci(int num);
extern void bubble_sort(int *vetor, int tamanho);
extern void insertion_sort(int *vetor, int tamanho);

int main(){

    int vetor[3] = {3,5,1};
    int vetor2[3];
    memcpy(vetor2, vetor, 3 * sizeof(int));

    printArray(vetor, 3);
    bubble_sort(vetor, 3);
    printArray(vetor, 3);
    printArray(vetor2, 3);
    insertion_sort(vetor2, 3);
    printArray(vetor2, 3);

    return 0;
}