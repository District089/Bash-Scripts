#!/bin/bash
#Created Date: Thu May 12 17:47:30 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please enter 4 Values followed by space: \c"
read -r a
read -r b
read -r c
read -r d

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]
then
echo "$a is big"
elif
[ $b -gt $c -a $b -gt $d ]
then
echo "$b is big"
elif 
[ $c -gt $d ]
then
echo "$c is big"
else
echo "$d is big"
fi
