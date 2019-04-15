#!/usr/bin/env bash

for dir in $(ls);do [ -d $dir ] && echo $dir; done;