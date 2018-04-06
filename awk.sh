#!/usr/bin/env bash

echo "输出每行的第一和第四个单词"
awk '{print $1,$4}' log.txt

echo "按指定格式输出每行的第一和第四个单词"
awk '{printf "%-8s %-10s\n",$1,$4}' log.txt


awk -F, '{print $1,$2}'   log.txt
awk 'BEGIN{FS=","} {print $1,$2}'     log.txt
awk -F '[ ,]'  '{print $1,$2,$5}'   log.txt

echo "输出文件中第一个单词与变量的计算值"
# Mac中执行失败，Linux中执行成功
awk -va=1 -vb=s '{print $1,$1+a,$1b}' log.txt

echo "输出文件中，第一个单词大于2的行"
awk '$1>2' log.txt
echo "输出文件中，第一个单词等于2 的行的第一个和第三个单词"
awk '$1==2 {print $1,$3}' log.txt
echo "输出第一个单词大于2，第二个单词为Are，的行的第一、二、三个单词"
awk '$1>2 && $2=="Are" {print $1,$2,$3}' log.txt

echo "内建变量"
awk 'BEGIN{printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n","FILENAME","ARGC","FNR","FS","NF","NR","OFS","ORS","RS";printf "---------------------------------------------\n"} {printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n",FILENAME,ARGC,FNR,FS,NF,NR,OFS,ORS,RS}'  log.txt

echo "分隔符使用'"
# FS	字段分隔符(默认是任何空格)
awk -F\' 'BEGIN{printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n","FILENAME","ARGC","FNR","FS","NF","NR","OFS","ORS","RS";printf "---------------------------------------------\n"} {printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n",FILENAME,ARGC,FNR,FS,NF,NR,OFS,ORS,RS}'  log.txt

echo "输出顺序号 NR, 匹配文本行号"
awk '{print NR,FNR,$1,$2,$3}' log.txt

echo "忽略大小写"
awk 'BEGIN{IGNORECASE=1} /this/' log.txt

echo "模式取反"
awk '$2 !~ /th/ {print $2,$4}' log.txt

echo "awk -f cal.awk score.txt"
awk -f cal.awk score.txt

echo "从文件中找出长度大于80的行"
awk 'length>80' log.txt


echo "打印九九乘法表"
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

