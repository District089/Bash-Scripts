#!/bin/bash
#Created Date: Thu May 12 07:14:59 UTC 2022
#Author: Dennis Uhlemann

#Variables must start with letters

A=10
Ba=23
BA=45
HOSTNAME=$(hostname)
DATE=`date`
1value=333 # for e.g false
False@Var=False
Hyphen-a=WrongValue

echo "Variable A Value: $A"
echo "Variable Ba Value: $Ba"
echo "Variable BA Value: $BA"
echo "Variable HOST value: $HOSTNAME"
echo "Variable Date value: $DATE"
echo "Wrong Variable 1value $1value"
echo 'False @ Variable' $False@Var'
echo "hypen-a Variable value: $Hyphen-a"

