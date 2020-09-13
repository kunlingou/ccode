
### 数组

```c
#include <stdio.h>

#define SIZE 8

const int g_Size = 8;

int main(void) {
    int size = 8;
    // 数组的初始化
    int powers[SIZE] = {1, 2, 4, 6, 8, 16, 32, 64};
    int powers[] = {1, 2, 4, 6, 8, 16, 32, 64};
    int powers[SIZE] = {0};
    
    // 不合法的初始化
    int powers[g_Size] = {1, 2, 4, 6, 8, 16, 32, 64};
    int powers[SIZE];
    powers[SIZE] = {1, 2, 4, 6, 8, 16, 32, 64}; 
    
    printf("Hello W3Cschool!\n");
    for (int i = 0; i < size; i++) {
        printf("powers[%d]:%d\n", i, powers[i]);
    }
    return 0;
}
```

### 字符串

```c
#include <stdio.h>

int main(void) {
    printf("Hello W3Cschool!\n");
    
    // char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
    char greeting[] = "Hello";
    printf("greeting: %s\n", greeting);
    printf("size: %d\n", sizeof(greeting));
    printf("addr[0]: %p\n", &greeting[0]);
    printf("addr[1]: %p\n", &greeting[1]);
    printf("addr[5]: %p\n", &greeting[5]);
    
    printf("greeting[4]: %X\n", greeting[4]);
    printf("greeting[5]: %X\n", greeting[5]);
    printf("greeting[6]: %X\n", greeting[6]);
    printf("addr[6]: %p\n", &greeting[6]);
    return 0;
}
```

### 基本组成

- 预编译语言 Directives
- 函数 Function
- 语句 Statements

- 注释 comments
```c
// XX
/* XX */
a = 10 /* p; // X
```

### 字符串

- 初始化与赋值

```
数值型数组，先定义后初始化必须一个一个地进行赋值，不能整体赋值；对于字符串，先定义后初始化也可以整体赋值，但是要调用 strcpy 函数。
当一个一个赋值时，系统不会自动添加 '\0'，必须手动添加。
```

- 结尾符\0

```c
#include <stdio.h>

int main(void) {
    printf("20200913 字符串-\\0\n");
    char str[3] = "";
    printf("str0:%0X\n", *((int*)str));
    printf("str0:%s\n", str);
    str[1] = 'a';
    printf("strA:%0X\n", *((int*)str));
    printf("strA:%s\n", str);
    str[0] = 'b';
    printf("strB:%0X\n", *((int*)str));
    printf("strB:%s\n", str);
    str[2] = 'c';
    printf("strC:%0X\n", *((int*)str));
    printf("strC:%s\n", str);
    str[1] = '\0';
    printf("strD:%0X\n", *((int*)str));
    printf("strD:%s\n", str);
    /*
    20200913 字符串-\0
    str0:FD000000
    str0:
    strA:FD006100
    strA:
    strB:FD006162
    strB:ba
    strC:FD636162
    strC:bac��
    strD:FD630062
    strD:b
    */
    return 0;
}
```