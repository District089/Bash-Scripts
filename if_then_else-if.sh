#!/bin/bash

#if, then,else,elseif

if [condition]
then
	statement
fi

########################################################
String Operators:
########################################################

=	 /is equal to/	if [ "$a" = "$b" ]
==       /is equal to/   if [ "$a" == "$b" ]
!=       /is not equal to/   if [ "$a" != "$b" ]
<       /is less than/   if [[ "$a" < "$b" ]]		/alphabetical order/
>       /is greater than/   if [[ "$a" > "$b" ]]	/alphabetical order/

#########################################################
Integer Operators:
#########################################################

-eq	/is equal to/		if [ "$a" -eq "$b" ]
-ne	/is equal to/		if [ "$a" -ne "$b" ]
-gt	/is greater than/	if [ "$a" -gt "$b" ]
-lt	/is less than/		if [ "$a" -lt "$b" ]
 




