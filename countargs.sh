#!/bin/bash
#Created Date: Thu May 12 10:03:01 UTC 2022
#Author: Dennis Uhlemann

echo "Your current given parameters are $#"
# execute ./countargs.sh test dennis uhlemann
# Your current given parameters are 3

# execute ./countargs.sh * ## counts the files in the current directory
# execute ./countargs.sh /etc/*
# root@CT103:~/shell_scripting_tutorial_for_beginners# ./countargs.sh /etc/*
# Your current given parameters are 140

if [ $# -lt 1 ]; then
echo "Program Usage is './scriptname.sh' options"
else
echo "Program executed successfully"
fi
  
