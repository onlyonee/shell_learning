#!/usr/bin/env bash

for ip in `cat for_if.txt`
do
    if [[ ${ip} -eq 1 ]]
    then
        echo  "\033[30m 黑色字体 \033[0m"
        echo  "\033[31m 红色字 \033[0m"
        echo -e "\033[43;35m david use echo say Hello World \033[0m \n"
        echo `df -h | awk 'NR==2 {print "\033[31m 可用容量= \033[0m"\$4}'`
    else
        echo "ip!=1"
    fi
done
avai_space=`df -h|awk 'NR==2 {print $4}'`
echo ${avai_space}
echo "\033[31m 666 \033[0m 的可用容量为：${avai_space}"


ssh -T root@10.199.134.13 << AAA
pwd
space=\`df -h | awk 'NR==2 {print \$4}'\`
echo "space= \${space}"
space2=\`df -h | awk 'NR==2 {print \$4}' | tr -cd "[0-9]"\`
if [[ \${space2} -lt 30 ]]
then
echo -e "\\033[31m 666 \\033[0m 的可用容量为：\${space}"
else
echo "111 的可用容量为：\${space}"
fi
AAA

