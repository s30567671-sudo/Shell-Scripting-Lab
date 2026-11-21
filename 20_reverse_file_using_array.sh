#!/usr/bin/env bash

read -p "Enter the filename : " file

if [[ -f "$file" ]]; then
    echo "Original file content : "
    cat $file
    declare -a lines

    #createing empty array
    while IFS= read -r line;
    do
        lines+=("$line")
    done < "$file"
    # another way for diaplaying original content
    # echo "original file content:"
    # echo "${file[@]}"
    i="${#lines[@]}"
    echo "No. of lines: $i"
    echo "Reversed file contents : "
    for((i=i-1; i>=0; i--))
    do
        echo "${lines[i]}"
    done
else
    echo "file does not exist"
fi
