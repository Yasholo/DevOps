#!/bin/bash
myfile='cars.txt'
i=1
while read lines; do
echo "$i : $lines"
i=$((i+1))
done < $myfile
