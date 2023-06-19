#! usr/bin/bash

read -p "enter value of a: " a #24
if [ `expr $a % 2` == 0 ]
then
	echo "$a is even."
else
	echo "$a is odd"
fi


