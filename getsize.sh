#!/bin/bash

file="/sys/fs/cgroup/memory/memory.limit_in_bytes"     #the file where you keep your string name

read -d $'\x04' name < "$file" #the content of $file is redirected to stdin from where it is read out into the $name variable

echo $name                   #test

node --max_old_space_size=$name
