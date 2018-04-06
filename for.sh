#!/usr/bin/env bash

for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done


# 顺序输出字符串中的字符
for str in 'This is a string'
do
    echo $str
done


# 写出输出数字 0 到 100 中 3 的倍数(0 3 6 9 …)的命令
# mac执行失败
for i in {0..100..3}; do echo $i; done

for (( i=0; i<=100; i=i+3 )); do echo "Welcome $i times"; done