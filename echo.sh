#!/usr/bin/env bash

# 输出字符串
echo "hello world"

# read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量
read name
echo "$name is hadsom"
# 输入：huge
# 输出：huge is hadsom

# 转义字符
echo "\"It is a test\""
# 输出："It is a test"

# 显示换行
echo -e "OK! \n第二行" # -e 开启转义
echo "It it a test"
# 输出：OK!
# 输出：It is a test

# 显示不换行
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
# 输出：OK!It is a test

# 显示结果定向至文件
echo "It is a test" > myfile
# 结果：myfile文件内容被重写为It is a test（如果没有myfile文件则先创建在重写）

# 将内容添加到文件末
echo "这是追加的内容" >> myfile

# 显示命令执行结果
echo `date`
# 注意： 这里使用的是反引号 `, 而不是单引号 '。
# 结果将显示当前日期：Thu Jul 24 10:08:46 CST 2014

# 原样输出字符串，不进行转义或取变量(用单引号)
echo '$name\"'
# 输出：$name\"