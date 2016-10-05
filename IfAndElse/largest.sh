#!/bin/sh

#Takes in three numbers from command line -accomplished
#echo largest of the three numbers - accomplished
#Guard against too few or too many parameters passed in

firstNumber=$1
secondNumber=$2
thirdNumber=$3
tooManyNumbers=$4

if  [ $1 = "" ] || [ $2 = "" ] || [ $3 = "" ]; then
	echo "Please make sure to enter exactly three values"
	echo "Exit 1"
	exit
fi

	 
largestNumber=$firstNumber

if [ "$secondNumber" -gt "$largestNumber" ]; then
	largestNumber=$secondNumber
fi

if [ "$thirdNumber" -gt "$largestNumber" ]; then
	largestNumber=$thirdNumber
fi

echo $largestNumber

