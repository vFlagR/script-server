#!/bin/bash
for file in /mnt/unionfs/movies/* 
do
	#echo `basename "$file"`
	filenames+=(`basename "$file"`)
done

printf '%s\n' "${filenames[@]}"
