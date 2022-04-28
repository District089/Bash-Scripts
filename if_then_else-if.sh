#!/bin/bash

#if, then,else,elseif
_11
#if [condition]
#then
#	statement
#fi

########################################################
String Operators:
########################################################

# =	 /is equal to/	if [ "$a" = "$b" ]
# ==       /is equal to/   if [ "$a" == "$b" ]
# !=       /is not equal to/   if [ "$a" != "$b" ]
# <       /is less than/   if [[ "$a" < "$b" ]]		/alphabetical order/
# >       /is greater than/   if [[ "$a" > "$b" ]]	/alphabetical order/

#########################################################
Integer Operators:
#########################################################

# -eq	/is equal to/		if [ "$a" -eq "$b" ]
# -ne	/is equal to/		if [ "$a" -ne "$b" ]
# -gt	/is greater than/	if [ "$a" -gt "$b" ]
# -lt	/is less than/		if [ "$a" -lt "$b" ]
# -le 	/is less than or equal to/	if [ "$a$ -le "$b" ]
# <	/is less than/ 		if (("$a" < "$b" ))
# >	/is greater than/	if (("$a" > "$b" ))
# <=	/is less than or equal to/	if (("$a" <= "$b" ))
# >= 	/is greater than or equal to/	if (("$a" >= "$b" ))

##########################################################

num1=30
num2=35
if [ "$num1" -gt 20 ]
then
	echo "This condition is true."
fi

if (( "$num1" > 20 ))
then
	echo "This condition is true."
fi

if [ $num1 != $num2 ]
then
	echo "This condition is true."
fi

var=d
if [[ $var == "b" ]]
then
	echo "condition is true."
elif [[ $var == "d" ]]
then
	echo "condition is true."
else
	echo "condition is false."
fi


