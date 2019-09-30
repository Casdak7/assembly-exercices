#include <stdio.h>

extern float grdtorad(float degrees);

int main(){

    float a = 90;
    float b = grdtorad(a);

    printf("%f graus = %f radianos\n", a, b);
    
    return 0;
}