#!/bin/bash

echo -e "Please Enter your age: \c"
read age
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
	echo "Your age is between 18 and 40"
else
	echo "Your age is under 18 or over 40"
fi

echo -e "Please Enter your age: \c"
read age
if [[ "$age" -gt 18  &&  "$age" -lt 40 ]]
then
        echo "Your age is between 18 and 40"
else
        echo "Your age is under 18 or over 40"
fi



echo -e "Please Enter your age: \c"
read age
if [ "$age" -gt 18  -a  "$age" -lt 40 ]
then
        echo "Your age is between 18 and 40"
else
        echo "Your age is under 18 or over 40"
fi


