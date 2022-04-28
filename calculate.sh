#!/bin/bash

# Take the input from the user #
echo "Pls enter two numbers for your operation: "
read x
read y

# Provide operation input #
echo "Enter your choice of operation: "
echo "1. Addition"
echo "2. Substraction"
echo "3. Multiplication"
echo "4. Division"
read ch

# Switch case to perform the operation #
case $ch in
	1) res=`echo $x + $y |bc`
	;;
	2) res=`echo $x - $y |bc`
	;;
	3)res=`echo $x \* $y |bc`
	;;
	4)res=`echo "scale=2; $x / $y" |bc`
	;;
esac
echo "Result : $res"

