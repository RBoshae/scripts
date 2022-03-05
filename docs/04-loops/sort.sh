#!/bin/bash

# Declare an array named ARRAY. 
# 	-a allows for reading and assigning values to member variables of an
# 	   array
declare -a ARRAY 
declare -i placeHolder

ARRAY=(8 3 32 4 100) # Assign integer values to the array

echo ${ARRAY[*]}

# Begin array sort
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

# Echo each element of the array
echo "Echo each number in order"
for indexValue in ${ARRAY[*]};
do
	echo $indexValue; 
done

