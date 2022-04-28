#!/bin/bash

# Read User Input #

echo "Please enter your Name"
read name
echo "Your Name is $name"

echo "Please enter the Names"
read name1 name2 name3
echo -e "The Names are \n $name1 \n $name2 \n $name3"

# other variante # 

read -p 'Enter your name here: ' name
read -sp 'Enter your password: ' password
echo
echo "Your name is $name"
echo "Your password is $password"

# other variante 2 # 

echo "Enter the names: "
read -a names 
echo "The entered names are: ${names[0]} ${names[1]} ${names[2]}"

# other variante 3 #

echo "Enter your name"
read
echo "Your name is $REPLY"





