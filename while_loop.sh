#!/bin/bash
#Created Date: Fri May 13 07:34:51 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please provide one value: \c"
read -r a
i=1
while [ $i -le 10 ]
do
b=`expr $a \* $i`
echo "$a * $i = $b"
i=`expr $i + 1`
done
