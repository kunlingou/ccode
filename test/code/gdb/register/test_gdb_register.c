#include <stdio.h>

int add(int a, int b, int c, int d, int e, int f)
{
    return a + b + c + d + e + f;
}

int main()
{
    int addV = add(1, 2, 3, 4, 5, 6);
    return addV;
}