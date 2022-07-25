#!/bin/bash
#Created Date: Thu May 12 17:41:46 UTC 2022
#Author: Dennis Uhlemann

echo -e "Enter any value:  \c"
read -r a
echo -e "Enter yn value: \c"
read -r b

if [ $a -gt $b ]
then
echo "$a is greater than $b"
else
echo "$b is greater than $a"
fi

