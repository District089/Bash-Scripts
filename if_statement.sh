#!/bin/bash
#Created Date: Thu May 12 17:35:22 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please provide Value below ten: \c"
read -r value

if [ $value -le 10 ]
then
echo "You provided value is $value"
touch /tmp/test{1..100}.txt
echo "Script completet successfully"
fi

