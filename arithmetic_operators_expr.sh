#!/bin/bash
#Created Date: Thu May 12 10:33:44 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please enter some value: \c"
read -r a
echo -e "Please enter another value: \c"
read -r b

echo "addition values is `expr $a + $b`"
echo "minus values `expr $a - $b`"
echo "multiplied by values `expr $a \* $b`"
echo "devided by values `expr $a / $b`"
echo "reminder values `expr $a % $b`"

echo "Completet successfully"

