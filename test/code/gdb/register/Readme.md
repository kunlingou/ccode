
### 寄存器 i r(info register)

```
// 寄存器
i r
i r a
i r esp
i r pc
```

### 内存 x(examine)

```
x /[number][format] <addr>

number: 一个正整数，表示从当前地址向后显示几个地址的内容
format：显示的格式不是查看的格式。和c语言中的格式缩写一样，如
d:整数integer
s:字符串string
c:字符char
u:无符号整数 unsigned integer
o:八进制格式显示变量
x:十六进制格式
f: 浮点数格式float

x /wx 0x80040000 // 16进制显示地址处数据
x /8x $esp
x /16x $esp + 12
x /16s 0x80040000 // 字符串显示数据
x /24i 0x80040000 // 指令显示数据24条

// 修改内存的值
set {unsigned int}0x8048a51=0x0
set *(unsigned int*)0x8048a54=0x55aa55aa

// 内存搜索 find <start> <end> <count> <value>
define find                             
set $ptr = $arg0
set $cnt = 0
while ( ($ptr<=$arg1) && ($cnt<$arg2) )
    if ( *(unsigned int *)$ptr == $arg3 )
        x /wx $ptr
        set $cnt = $cnt + 1
    end
    set $ptr = $ptr + 4
end
end
```

### other

```
// 断点、监测点
b *0x80400000
watch *(unsigned int *)0xbffff400==0x90909090
```

### result

```
(gdb) i r
rax            0x400503 4195587
rbx            0x0      0
rcx            0x4      4
rdx            0x3      3
rsi            0x2      2
rdi            0x1      1
rbp            0x7fffffffe450   0x7fffffffe450
rsp            0x7fffffffe450   0x7fffffffe450
r8             0x5      5
r9             0x6      6
r10            0x7fffffffdf60   140737488346976
r11            0x7ffff7a2f460   140737348039776
r12            0x4003e0 4195296
r13            0x7fffffffe550   140737488348496
r14            0x0      0
r15            0x0      0
rip            0x4004d1 0x4004d1 <add+4>
eflags         0x206    [ PF IF ]
cs             0x33     51
ss             0x2b     43
ds             0x0      0
es             0x0      0
fs             0x0      0
---Type <return> to continue, or q <return> to quit---
gs             0x0      0
```