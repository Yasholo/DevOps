#!usr/bin/bash

echo "write a program to check number of words in a file are 200 otherwise print "greater than 200" or "less than 200"."

if [ "$(wc -w file.txt)" == "200 file.txt" ];
then
	echo "word count is equal to 200"
else
	echo word count is `wc -w file.txt`
fi

