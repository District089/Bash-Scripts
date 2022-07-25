#!/bin/bash
#Created Date: Fri May 13 07:18:44 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please enter Maths Marks: \c"
read -r m
echo -e "Please enter Physics Marks: \c"
read -r p
echo -e "Please enter Chemistry Marks: \c"
read -r c

if [ $m -ge 1 -a $p -ge 1 -a $c -ge 1 ];then
total=`expr $m + $p + $c`
avg=`expr $total / 3`
echo "Total marks = $total"
echo "Average Marks = $avg"
	if [ $avg -le 2 ]
	then
	echo "Congrats you got very gooy/good"
	elif [ $avg -gt 2 -a $avg -le 3 ]
	then
	echo "Congrats you get in the next class"
	elif [ $avg -gt 3 -a $avg -le 4 ]
	then
	echo "You are bad"
	fi
else "Sorry you failed"
fi

