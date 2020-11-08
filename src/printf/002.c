#include <stdio.h>

void echo()
{
    printf("printf %%.*f\r\n");
}

int main(void) {
    echo();
    int a = 4;
    float m = 3.1415926;
    printf("%.*f\r\n", a, m);
    return 0;
}