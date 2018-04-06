#!/usr/bin/env bash

let a=5+4
let b=9-3
let c=a+b
let d=c+$1
echo $a $b ${c} ${d}

echo "自加操作"
no=1
let no++
echo ${no}

let no--
echo ${no}

echo "简写形式:let no+=10，let no-=20，分别等同于 let no=no+10，let no=no-20 "
let no+=10
echo ${no}

let no-=20
echo ${no}



A=5
B=6
let V3=$A+$B # 方法一
echo $V3
echo $(($A+$B))  # 方法 2
echo $[$A+$B]    # 方法 3
expr $A + $B     # 方法 4
echo $A+$B | bc  # 方法 5
awk 'BEGIN{print '"$A"'+'"$B"'}'   # 方法 6
let D=A+B  #方法7
echo ${D}