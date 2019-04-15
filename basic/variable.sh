#!/usr/bin/env bash

name="test"
string="this is a string ${test}"
echo ${string}

string2="this is a string $test"
echo $string2

your_name='mahq'
str="Hello, I know your are \"$your_name\"! \n"
echo ${str}

# 字符串拼接
your_name2="qinjx"
greeting="hello, "$your_name2" !"
greeting_1="hello, ${your_name2} !"
echo $greeting $greeting_1

# 获取字符串长度
string3="abcd"
echo ${#string3}

# 以下实例从字符串第 2 个字符开始截取 4 个字符
string4="runoob is a great site"
echo ${string4:1:4}


# 数组
array_name=(value0 value1 value2 value3)
# 打印数组第一个元素
echo ${array_name}
echo ${array_name[0]}
# 打印数组第二个元素
echo ${array_name[1]}
# 打印数组所有元素
echo ${array_name[@]}
echo ${array_name[*]}
# 输出所有数组索引
echo ${!array_name[@]}


# 获取数组长度
length=${#array_name[@]}
length2=${#array_name[*]}
echo ${length}
echo ${length2}

# 取得数组单个元素的长度
lengthn=${#array_name[1]}
echo ${lengthn}

# 移除数组中索引为 2 的元素
unset ${array_name[2]}
echo ${array_name[@]}

# 替换文件中字符
aa="a-123,b-123\n"
# 将${aa}里的第一个123替换为321
a1=${aa/123/321}
# 将${aa}里的全部123替换为321
a2=${aa//123/321}
printf  ${a1}${a2}
