#!/usr/bin/env bash

read ip

if [[ "${ip}" = "1" || "${ip}" = "2" ]]
then
    file_path="/Users/chenshen/mahq/test"
else
    file_path="/Users/chenshen/mahq"
fi

cd ${file_path}
pwd
df -h | awk 'NR==2 {print $4}'
