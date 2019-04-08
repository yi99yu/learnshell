#!/bin/bash
path=$(echo $PATH | sed 's/:/ /g')
count_path=0
for i in $path
do
	path_files=$(ls $i)
	if [ $? -gt 0 ]; then
		echo "path error $i, exit!!!"
	fi
	for file in $path_files
	do
		count_path=$[count_path+1]
	done
	echo "the files in path $i include $count_path files"
done
