#!/usr/bin/env bash

cat myfile.txt

#sed -i'' -e 's/chenshen/mahq/g' myfile.txt

sed -e  "2i\test001" myfile.txt

cat myfile.txt

#nl myfile.txt | sed '2,5d'
#nl myfile.txt | sed '3,$d'
#nl myfile.txt | sed '2a drink tea'