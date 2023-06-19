#!usr/bin/bash

#Write a program to access variable which are defined in another file.

#source n1.sh
#echo $a
#echo $b

#Write a program to keep the file contents of file n2.sh into a variable and access those contents using another file.

#file="n2.sh"
#name=$(cat "$file")


#AWK: it is a scripting language used to manipulate data and generating reports.
#
#awk options 'selection_criteria {action}' input-file > output-file
#
#awk '{print}' employee.txt
#awk '{print $0}' employee.txt
#awk '{print $1}' employee.txt
#awk '/manager/ {print $1}' employee.txt
#awk '/manager/ {print $1, $4}' employee.txt
#awk '{print NR, $0}' employee.txt
#awk '{print $NF}' employee.txt


#Write a command to print second to fourth line with the line number.

#awk 'NR==2, NR==4 {print NR, $0}' employee.txt
#awk '{print length($0)}' employee.txt
#awk 'END {print NR}' employee.txt

#Write a command to print details where length is greater than 25.
#
#awk 'length($0) > 25' employee.txt

#IFS "Internal Field Seperator"
#
MySentence="Bash is an effective programming"

for MyWords in $MySentence
do
	echo "MyWords"
done

Persons=Alex:Thomas:Kyle:Jenny
Pre_ifs="$IFS"
IFS=":"
for Per in $Persons
do
	echo The name of Person is $Per
done

echo " this  is a test " | while IFS= read -r line; do echo "$line=" ; done

echo " this  is a test " | while IFS= read -r line; do echo "$line" ; done

echo " this  is a test " | while IFS= read -r line; do echo "hhhh$line" ; done


