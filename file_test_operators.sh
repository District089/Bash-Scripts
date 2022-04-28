#!/bin/bash

echo -e "Please enter the name of the file : \c"
read filename
if [ -e $filename ] 
then
	echo "$filename exists."
else
	echo "$filename does not exists."
fi

# -e check if the file exists
# -f check if the file exists
# -d check if the directory exists
# -b check if the blockfile exists
# -c check if the charakterspecial file exists
# -s check if the file is empty or not
# -r check the root permission on the file
# -w check if the write permission on the file
# -x check if the execute permission on the file




