#!/bin/bash

a="."
b="!"

grep -v '^$' quotes.txt > temp3.txt

 
while read -r line;
do
	echo  "$line" > tempo.txt
	quote=`cut -d '~' -f 1 tempo.txt` author=`cut -d '~' -f 2 tempo.txt`
	quote=${quote//. /$a}
	quote=${quote//! /$b}
	rm tempo.txt
	echo "$author" once said, "\"$quote\"" >> speech.txt
done < temp3.txt

rm temp3.txt


