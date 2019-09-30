#include <stdio.h>

// extern float grdtorad(float degrees);
extern double polinomio(int grau, double *coeficientes, double x);
// extern double custom_pow(double x, int y);

int main(){

    double coeficientes[10] = {7, 9, 3, 4, 0, 32, 6, 4, 0 , 3};
    double x = 2;

    printf("%g\n", polinomio(10, coeficientes, x));
    
    return 0;
}