#include <stdio.h>

extern int custom_abs(int num);
extern char custom_toupper(char ch);
extern unsigned long int custom_strtoul(const char *str, char **endptr, int base);
extern void custom_memset(void *ptr, int x, size_t n);
extern size_t custom_strlen(const char *str);
extern char *custom_strcpy(char *dest, const char *src);
extern char *custom_strcat(char *dest, const char *src);
extern int custom_strcmp(const char *str1, const char *str2);
extern char *custom_strchr(const char *str, int c);
extern char *custom_strstr(const char *haystack, const char *needle);


int main(){
    // int b = custom_abs(-5);   
    // printf("%d\n", b);
    // char c = custom_toupper('a');   
    // printf("%c\n", c);
    // c = custom_toupper('D');   
    // printf("%c\n", c);
    // c = custom_toupper('Z');   
    // printf("%c\n", c);
    // c = custom_toupper('z');   
    // printf("%c\n", c);
    
    char str[30] = "Joao ";
    char str2[30] = "Maria ";
    // custom_memset(str, 'a', 5);
    // printf("%s\n", str);
    // printf("%s\n", str2);

    // printf("%lu \n", custom_strlen(str));
    // printf("%lu \n", custom_strlen(str2));

    // custom_strcpy(str, str2);

    // printf("%s\n", str);
    // printf("%s\n", str2);

    custom_strcat(str, str2);
    printf("%s\n", str);
    printf("%s\n", str2);
    
    
    custom_strchr(str, 'e') ? printf("%s\n", custom_strchr(str, 'o')) : printf("Null!\n");
    printf("%s\n", custom_strchr(str2, 'a'));

    return 0;
}