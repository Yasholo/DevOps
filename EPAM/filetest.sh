#!/bin/bash
#
#reading data from the user

read -p "Enter file name: " FileName

if [ -e $FileName ]
then
	echo File Exist
else
	echo File doesnot exist
fi

if [ -s $FileName ]
then
	echo The given file is not empty
else 
	echo The given file is empty
fi
