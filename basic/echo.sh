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
# 输出：
# OK!
# 第二行
echo "It it a test"
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

echo "除非new已经被设置，且不为空，则输出new变量的值；否则输出Variable}"
echo ${new:-variable}
mm=wahh
echo ${mm:-variable}

echo "${mm}" '${mm}'



variable="User:123:321:/home/dir"
# 如何只用 echo 命令获取 home/dir
echo ${variable#*:*:*:}
echo ${variable##*:}
# 从上面的字符串中获取 “User”
echo ${variable%:*:*:*}
echo ${variable%%:*}
# 打印变量的最后 5 个字符，：后面一定要有空格
echo ${variable: -5}

# 将变量中的pattern替换为replacement，但是不影响变量值
variable1="hello replacement pattern"
echo ${variable1//pattern/replacement}

echo ${variable1}



#
#下面是字体输出颜色及终端格式控制
#字体色范围：30-37
echo -e "\033[30m 黑色字 \033[0m"
echo -e "\033[31m 红色字 \033[0m"
echo -e "\033[32m 绿色字 \033[0m"
echo -e "\033[33m 黄色字 \033[0m"
echo -e "\033[34m 蓝色字 \033[0m"
echo -e "\033[35m 紫色字 \033[0m"
echo -e "\033[36m 天蓝字 \033[0m"
echo -e "\033[37m 白色字 \033[0m"
#字背景颜色范围：40-47
echo -e "\033[40;37m 黑底白字 \033[0m"
echo -e "\033[41;30m 红底黑字 \033[0m"
echo -e "\033[42;34m 绿底蓝字 \033[0m"
echo -e "\033[43;34m 黄底蓝字 \033[0m"
echo -e "\033[44;30m 蓝底黑字 \033[0m"
echo -e "\033[45;30m 紫底黑字 \033[0m"
echo -e "\033[46;30m 天蓝底黑字 \033[0m"
echo -e "\033[47;34m 白底蓝字 \033[0m"

#控制选项说明
#\033[0m 关闭所有属性
#\033[1m 设置高亮度
#\033[4m 下划线
echo -e "\033[4;31m 下划线红字 \033[0m"
#闪烁
echo -e "\033[5;34m 红字在闪烁 \033[0m"
#反影
echo -e "\033[8m 消隐 \033[0m "

#\033[30m-\033[37m 设置前景色
#\033[40m-\033[47m 设置背景色
#\033[nA光标上移n行
#\033[nB光标下移n行
echo -e "\033[4A 光标上移4行 \033[0m"
#\033[nC光标右移n行
#\033[nD光标左移n行
#\033[y;xH设置光标位置
#\033[2J清屏
#\033[K清除从光标到行尾的内容
echo -e "\033[K 清除光标到行尾的内容 \033[0m"
#\033[s 保存光标位置
#\033[u 恢复光标位置
#\033[?25| 隐藏光标
#\033[?25h 显示光标
echo -e "\033[?25l 隐藏光标 \033[0m"
echo -e "\033[?25h 显示光标 \033[0m"
