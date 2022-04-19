#!/bin/bash

awk '{if (++dup[$0] == 1) print $0;}' quotes.txt > out.txt
rm quotes.txt
mv out.txt quotes.txt


