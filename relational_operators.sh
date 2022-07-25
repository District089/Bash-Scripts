#!/bin/bash
#Created Date: Thu May 12 12:54:10 UTC 2022
#Author: Dennis Uhlemann

echo -e "Please provide one number: \c"
read -r h
echo -e "Please provide one number: \c"
read -r g

test $h -lt $g;echo "$?";
test $h -le $g;echo "$?";
test $h -gt $g;echo "$?";
test $h -ge $g;echo "$?";
test $h -eq $g;echo "$?";
test $h -ne $g;echo "$?";

# 0 = sucess
# 1 = failed 


