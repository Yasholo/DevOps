#!/bin/bash
echo Enter the number you want to get factorial for
read mynumber
factorial=1
for ((i=1;i<=mynumber;i++))
do
factorial=$(($factorial*$i))
done
echo $factorial
