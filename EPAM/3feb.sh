#SED COMMAND
#
#sed 's/manage/peon/' employee.txt

#sed 's/manager/Linux/2' employee.txt
#sed 's/manager/Linux/g' employee.txt
#sed '2 s/peon/cloud/' employee.txt
#sed 's/manager/yash/2g' employee.txt
#sed 's/manager/yash/3g' employee.txt
#sed '1 s/peon/cloud/' employee.txt
#sed 's/manager/yolo/p' employee.txt
#sed '3, $ s/clerk/assistant/' employee.txt
#sed '2d' employee.txt
#sed '2,3d' employee.txt
#sed '2, 3d' employee.txt>employee2.txt
#sed '/manager/d' employee.txt
#sed '/clerk/p' employee.txt
#sed -n '/clerk/p' employee.txt
#sed -n '/m*r/p' employee.txt
#sed -n '^z' employee.txt
#sed -n '/^z/p' employee.txt

#write a command to show content that ends with 'p'

#sed -n '/p$/p' employee.txt

#write a command for "Welcome K19cc" to put W and K in brackets

#echo Welcome K19cc | sed 's/[a-z]/(&)/g'

#Write a shell programm to read command line argument a number and print your name according to that number (that many times)

#a=$1
#while [ $a -gt 0 ]
#do
#	echo "$2"
#	a= $((a-1))
#done

#write a program to define a function with arguments if argument values are odd then perform sum for it 


odd(){
	sum=0
	for x in "$0"
	do
		if (( x%2==1 ))
		then
			sum=$((sum+x))
		fi
	done
	echo "sum is: " $sum
}
odd 13 10 20 15 43 27 



#write a command to start web server.
