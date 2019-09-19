#include <stdio.h>

// extern int is_primo(int num);
extern int fibonacci(int num);

int main(){
    int n = 5;
    // is_primo(7) ? printf("Primo!") : printf("Nao Primo!");
    for(int i = 0; i < 15; i++)
        printf("%d \n", fibonacci(i));
    

    return 0;
}