#!/bin/bash

: '
str="shell programm"
str1=shell
str2='shell program'
echo $str
sub=${str:6:2}
echo $sub
echo ${#sub}
'

#echo "********************"

#write a progamm to read a string as a command line argument. find the length of that and extract second word from the string.

: '
read -p "Enter a string: " str
len=${#str}
sub=${str:1:1}
echo "The length of the string is: $len "
echo "Second letter from the string is: $sub " 
'

#To create a function1 to print your name and call that function

: '
fun1(){
	echo $1
	echo $2
	echo $#
	echo $@

}
fun1 Yash Ankit Shubham
'

#****************

#Define your function here

: '
fun (){
	return 10
}
#invoke your function
fun
#Capture value returned by last command
ret=$?
echo "Return value is $ret"
'

#Write a shell program which perform segration of random arguments also return length of arguments.

: '
find_avg(){
	n_arg=$#
	echo $n_arg
	sum=0
	for x in "$@"
	do
		sum=$((sum + x))
	done
	echo "sum is" $sum
	avg=$((sum/n_arg))
	return $avg
}
find_avg 30 40 50 60
echo "last returned value:" "$?"
'

#Write a function to find wheather number is odd number or not.

: '
odd(){
	read -p "Enter a number: " i
	if [ $((i%2)) != 0 ]
	then
		echo "$i is odd number"
	else
		echo "$i is not odd"
	fi
}
odd
'

: '
odd2(){
	read -p "Enter a number: " a
	x=$a
	if [ $((x%2)) == 0 ]; 
	then
		echo "Invalid Input"
	else
		echo "Number is Odd"
	fi
}
odd2
'

#Write a program to declare fun1 which return sum of two function argument. Declare another function fun2 which fetch sum of first function and calculate the average of that.

: '
fun1(){
	z = $x + $y
	echo "The sum is: "$z	
}
read x
read y
fun1 $x $y 
'