#include <stdio.h>

extern int custom_abs(int num);
extern char custom_toupper(char ch);

int main(){
    int b = custom_abs(-5);   
    printf("%d\n", b);
    char c = custom_toupper('a');   
    printf("%c\n", c);
    c = custom_toupper('D');   
    printf("%c\n", c);
    c = custom_toupper('Z');   
    printf("%c\n", c);
    c = custom_toupper('z');   
    printf("%c\n", c);

    return 0;
}