#!/usr/bin/env bash

a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi



num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等!'
else
    echo '两个数字不相等!'
fi


n1=`expr 2 + 2`
if [ ${n1} -gt 10 ]
then
    echo "n1 大于 10"
else
    echo "n1=${n1} 小于等于 10"
fi