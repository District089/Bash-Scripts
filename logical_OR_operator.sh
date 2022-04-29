#!/bin/bash

echo -e "Please Enter your age: \c"
read age
if [ "$age" -gt 18  -o  "$age" -lt 40 ]
then
        echo "Valid Age"
else
        echo "Age not valid"
fi


# Die erste Bedingung, die passt reicht um das Script zu beenden

echo -e "Please Enter your age: \c"
read age
if [[ "$age" -gt 18  ||	  "$age" -lt 40 ]]
then
        echo "Your age is between 18 and 40"
else
        echo "Your age is under 18 or over 40"
fi



