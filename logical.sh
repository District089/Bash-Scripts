#!/bin/bash
#Created Date: Thu May 12 13:08:15 UTC 2022
#Author: Dennis Uhlemann

# AND (-a) (&&)
# OR  (-o) ||
# NOT (-n) !

#################################################
echo -e  "Enter Your Maths Subject Marks: \c"
read -r m
echo -e  "Enter Your Physics Subject Marks: \c"
read -r p
echo -e  "Enter Your Chemistry Subject Marks: \c"
read -r c
############# AND ###############################
if test $m -ge 35 -a $p -ge 35 -a $c -ge 35
then
echo "Congratulations, You have passed in all subjects"
else
echo "Sorry you not up to mark in one of the subject"
fi
##################################################
echo -e  "Enter first numeric value: \c"
read -r t
echo -e  "Enter second numeric: value \c"
read -r b
############## OR #################################
if [ $t -le 20 -o $b -ge 30 ]; then
echo "Statemant is True"
else
echo "Statemant is False"
fi
#################################################

