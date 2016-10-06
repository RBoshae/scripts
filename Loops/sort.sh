#!/bin/bash
#used bash instead of sh becuase i had errors using sh

declare -a ARRAY #declare an array called ARRAY, The -a allows for reading and assigning values to member variables of an array
declare -i placeHolder

ARRAY=(8 3 32 4 100) #assign integer values to the array

echo ${ARRAY[*]}

#begin array sort
for j in 0 1 2 3 4
do
	for i in 0 1 2 3 4 
	do
		k=$[$i+1]	

		if [ "$k" -ne "5" ]
		then

			if [ "${ARRAY[${i}]}" -gt "${ARRAY[${k}]}" ]
			then
				#swap values
				placeHolder="${ARRAY[${i}]}"
				ARRAY[${i}]="${ARRAY[${k}]}"
				ARRAY[${k}]="$placeHolder"
			
			fi
		fi
	done
done

#echo each element of the array
echo "Echo each number in order"
for indexValue in ${ARRAY[*]};
do
	echo $indexValue; 
done

