# Task2 : make a prog that decides if a  number is odd or Even ?


#!/bin/bash
echo "Enter a number:"
read number


if [ $((number % 2)) -eq 0 ]; then
echo "The number is  Even"
else
echo "The number is Odd"
fi



# output : Enter a number : 4
           The number is Even
           Enter a number : 5
          The number is Odd
