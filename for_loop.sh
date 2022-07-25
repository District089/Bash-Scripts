#!/bin/bash
#Created Date: Fri May 20 07:45:21 UTC 2022
#Author: Dennis Uhlemann

for i in $(cat ping.txt);
do
	ping -c1 "$i" >> /tmp/results.txt
valid=`echo $?`
if [ $valid -gt 1 ]; then
echo "$i Host is not reachable"
else
echo "$i Host is up"
fi
done

