#!/usr/bin/env bash

#使用-I指定一个替换字符串{}，
#这个字符串在xargs扩展时会被替换掉，当-I与xargs结合使用，每一个参数命令都会被执行一次
cat xargs.txt | xargs -I {} sh xargs-t.sh XXX {} YYY

#单行输出
cat xargs.txt |xargs

#多行输出，每行用-n指定输出字符串个数
cat xargs.txt | xargs -n2

#echo "nameXnameXnameXname" | xargs -dX
#echo "nameXnameXnameXname" | xargs -dX -n2

find . -type f -name "*.sh" -print0 | xargs -0 wc -l