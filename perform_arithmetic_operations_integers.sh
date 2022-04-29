#!/bin/bash

echo -e "Please enter the first number: \c"
read num1

echo -e "Please enter the second number: \c"
read num2

echo -e "The sum is $((num1 + num2))"
echo "The difference is $((num1 -num2))"
echo "The multiplication is $((num1 * num2))"
echo "The division is $((num1 / num2))"
echo "The remainder is $((num1 % num2))"


echo -e "The sum is $(expr $num1 + $num2)"
echo "The difference is $(expr $num1 - $num2)"
echo "The multiplication is $(expr $num1 \* $num2)"
echo "The division is $(expr $num1 / $num2)"
echo "The remainder is $(expr $num1 % $num2)"

