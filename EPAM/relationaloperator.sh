read -p "enter a: " a
read -p "enter b: " b
echo -e "\n"
if [ $a -eq $b ]
then 
echo "$a and $b are equal"
else
echo "$a and $b are not equal"
fi

echo -e "\n"
echo "realtion for x=a*3and y=b*5 all relational operators: "

x=$((a*3))
y=$((b*5))

if [ $x -eq $y ]
then
	echo x is equal to y.
else
	echo x is not equal to y.
fi

if [ $x -ne $y ]
then
	echo x is not equal to y.
else
	echo x is equal to y.
fi

if [ $x -gt $y ]
then
	echo x is greater.
else
	echo y is greater.
fi

if [ $x -lt $y ]
then
	echo x is smaller.
else
	echo y is smaller.
fi

if [ $x -ge $y ]
then
	echo x is greater than or equal to y.
else
	echo y is greater than or equal to x.
fi

if [ $x -le $y ]
then
	echo x is smaller than or equal to y.
else
	echo y is smaller than or equal to x.
fi




