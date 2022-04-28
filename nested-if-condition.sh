#!/bin/bash

# Nested if condition #

echo -e "Please enter the file name: \c"
read filename
if [ -f $filename ]
then
	if [ -w $filename ]
		then
			echo "Type your text here & press ctrl+d to exit."
			cat >> $filename
		else
			echo "File does not have the write permission."
		fi
else
	echo "$filename does not exist"
fi


