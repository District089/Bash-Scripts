#!/bin/bash

# Variables are of two types in UNIX like systems:
# 1. System Variables
# 2. User Defined Variables

# 1. System Variabls are defined in CAPITAL LETTERS
# e.g. HOME,SHELL,PATH,HOSTNAME

# echo $SHELL
# echo $HOSTNAME

# 2. User defined Variables are defined, by the users
# e.g. myvar, newvar

# myvar=55

# unset myvar

# set | less # shows all system variables

echo My shell is $BASH
echo The version of my shell is $BASH_VERSION
echo My username is $USER
echo "I am crrently working inside $PWD on $HOSTNAME"



