#!/usr/bin/bash


read -p "enter a:" a
read -p "enter b:" b

echo The sum is $((a+b))
echo The difference is $((a-b))
echo The product is $((a*b))
echo "(a+b)^3" is $(((a+b)**3))
echo a-4 is $((a-4))

: '
echo if x=4 and y=15
read x
read y
'

