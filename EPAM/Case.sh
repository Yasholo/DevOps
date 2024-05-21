#Write a shell program to remove a file if pattern matches with 'yes' if pattern is 'no' then print "No Deletion" otherwise print "Default Condition". Read filename as command line argument.


echo "you want to remove file?" 
echo "please enter yes or no"
read ans
case $ans in
	"yes") rm $1
		echo "file removed"
		;;
	"no")
		echo "file not removed"
		;;
	*) 
		echo "not understand your request"
esac