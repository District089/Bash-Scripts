#!/bin/bash
#Created Date: Thu May 12 07:36:17 UTC 2022
#Author: Dennis Uhlemann

# $* it stores the complete set of positional parameters as a single string
# $# It is set to the number of arguments specified
# $1 first argument
# $2 second argument
# $0 name of executed command
# "$@" each quoted string treated as a seperate argument
# $? exit status of last command
# $$ PID of the current shell
# $! PID of the last background job

echo "'$*' output is $*"
echo "'$#' output is $#"
echo "'$1 & $2' output is $1 & $2"
echo "'$@' output of $@"
echo "'$?' out put is $?"
echo "'$$' output is $$"
sleep 400 &
echo "'$!' output is $!"


echo "'$0' your current program name is $0"

