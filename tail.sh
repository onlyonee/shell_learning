#!/usr/bin/env bash

# 要显示 notes.log 文件的最后 10 行，请输入以下命令：
tail notes.log

# 要跟踪名为 notes.log 的文件的增长情况，请输入以下命令：
tail -f notes.log

# 显示文件 notes.log 的内容，从第 20 行至文件末尾
tail +20 notes.log

# 显示文件 notes.log 的最后 10 个字符
tail -c 10 notes.log