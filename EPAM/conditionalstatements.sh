#!usr/bin/bash

: '
for i in *.sh
do 
echo $i
done
'

: '
echo counting from 0 to 5
for i in {0..5}
do
	echo $i
done

#echo "write a program to find files with .doc extension"
'

: '
While command
do
  Statement(s) to be executed if command is true
done
'

: '
read -p "enter value of a: " a
while [ $((a%2)) == 0 ]
do
	echo $a is even.
	break
done
'

#read the value from user until user hasn't entered "no"

: '
read -p "Enter a value: " v
while [ "$v" != no ]
do
	read -p "Enter a value: " v
done
'

: '
a=0
while [ "$a" -lt 10 ]
do
	echo $a
	a=$((a+1))
done
'