#!/usr/bin/env bash

echo "输出每行的第一和第四个单词"
awk '{print $1,$4}' log.txt

echo "按指定格式输出每行的第一和第四个单词"
awk '{printf "%-8s %-10s\n",$1,$4}' log.txt


awk -F, '{print $1,$2}'   log.txt
awk 'BEGIN{FS=","} {print $1,$2}'     log.txt
awk -F '[ ,]'  '{print $1,$2,$5}'   log.txt

echo "输出文件中第一个单词与变量的计算值"
awk -va=1 -vb=s '{print $1,$1+a,$1b}' log.txt

echo "输出文件中，第一个单词大于2的行"
awk '$1>2' log.txt
echo "输出文件中，第一个单词等于2 的行的第一个和第三个单词"
awk '$1==2 {print $1,$3}' log.txt

