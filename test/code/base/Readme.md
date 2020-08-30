
### 数组

```
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

```

```