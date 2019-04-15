#!/usr/bin/env bash

echo  "显示前五行"
head -n 5 notes.log

echo "显示除了最后五行之外的其他内容"
head -n -5 notes.log

echo "显示除了最后10个字节以外的其他内容"
head -c -10  notes.log

echo "取第十行内容"
head -n 10 notes.log | tail -1
