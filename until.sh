#!/usr/bin/env bash

i=0

int=1
until(( $int==5 ))
do
    echo $int
    let "int++"
done