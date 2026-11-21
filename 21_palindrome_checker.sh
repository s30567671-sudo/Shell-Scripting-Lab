#!/usr/bin/env bash

read -p "Enter the word to check: " str
reverse=""
i="${#str}"

if [[ -z "$str" ]]; then
    echo "Enter a string"
    exit 1
fi

for ((i=i-1; i>=0; i--));do
    reverse="$reverse${str:$i:1}"
done

echo "Original word: $str"
echo "Reversed word: $reverse"
if [[ "$str" == "$reverse" ]];then
    echo "palindrome"
else
    echo "Not palindrome"
fi
