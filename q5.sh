#!/bin/bash

echo "Enter a string for 5a"

read str

len=${#str}

#Question 5a

for (( i=$len-1; i>=0; i-- ))
do
	echo -n "${str:$i:1}"
done

echo

#Question 5b

echo "Enter a string for 5b"

read str2

n=${#str2}

for (( i=0; i<$n ; i++ ))
do
        echo -n "${str2:$i:1}" | tr "[a-z]" "[b-za]" | tr "[A-Z]" "[B-ZA]"
done

echo

#Question 5c

echo "Enter a string for 5c"

read str3

n=${#str3}

let half=$n/2

for (( i=$half-1; i>=0; i-- ))
do
        echo -n "${str3:$i:1}"
done

for (( i=$half; i<n; i++ ))
do
        echo -n "${str3:$i:1}"
done




