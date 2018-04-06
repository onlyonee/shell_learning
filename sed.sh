#!/usr/bin/env bash

cat myfile.txt

############## Mac #############
sed -i'' -e 's/chenshen/mahq/g' myfile.txt


############## linux #############

# 将文件中的 chenshen 替换成 mahq
sed -i 's/chenshen/mahq/g' myfile.txt

# 在第二行插入test001，即插入的内容在第二行
sed -i  "2i\test001" myfile.txt
# 在第二行新增，即新增的内容在第三行
sed -i  "2a\test001" myfile.txt

# 在最后一行新增内容
sed -i '$a this is last one' myfile.txt
sed -i '$a\this is last one' myfile.txt
# 在最后一行插入，即添加到倒数第二行
sed -i '$i\this is last one' myfile.txt

# -i 动作下，指定行2，a是在行2-3之间新增一行写入内容，i是在行1-2之间新增一行写入内容

# 删除文件第二行
sed -i '2d' myfile.txt
# 删除2~5行
sed -i '2,5d' myfile.txt

# 将2~5行的内容替换成 this is one Apple
sed -i '2,5c' myfile.txt

cat myfile.txt

# 不进行文件本身的修改，在读取到的文件内容中进行修改
nl myfile.txt | sed '2,5d'
nl myfile.txt | sed '3,$d'
nl myfile.txt | sed '2a drink tea'