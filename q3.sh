#!/bin/bash

echo "Enter filename"
read file

#Question 3a
wc -c < $file

echo

#Question 3b
wc -l < $file

echo

#Question 3c
wc -w < $file

echo

#Question 3d
no=1

while read -r line;
do
        echo "$line" > t.txt
        count=`wc -w < t.txt`
        echo Line No: "$no" - Count of Words: "$count"
        ((no++))
        rm t.txt
done < "$file"

echo

#Question 3e
grep -wo '[[:alnum:]]\+' $file | sort | uniq -cd | awk '{print "Word:",$2," - Count of repetition:",$1}'





