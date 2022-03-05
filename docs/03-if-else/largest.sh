#!/bin/sh

# Takes in three numbers from command line -accomplished
# echo largest of the three numbers - accomplished
# Guard against too few or too many parameters passed in

firstNumber=$1
secondNumber=$2
thirdNumber=$3
tooManyNumbers=$4

if  [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
	echo "Please make sure to enter exactly three values"
	echo "Exit 1"
	exit
fi

if [ -z $4 ]; then

	 
	largestNumber=$firstNumber

	if [ "$secondNumber" -gt "$largestNumber" ]; then
		largestNumber=$secondNumber
	fi

	if [ "$thirdNumber" -gt "$largestNumber" ]; then
		largestNumber=$thirdNumber
	fi

	echo $largestNumber
else
	echo "Too many parameters have been passed, please make sure to enter exactly three values"
	echo "Exit 2"
fi

