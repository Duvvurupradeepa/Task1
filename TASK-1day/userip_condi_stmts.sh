# Task3 : create a program that askes for a number and tells you if it is positive number,negitive number or zero ?


#!/bin/bash
read -p "Enter a number :" number
echo "number is $number"
if [ $number -gt 0 ]; then
echo "number is positive"
 elif [ $number -lt 0 ]; then
 echo "number is negative "
else
echo "number is zero"
fi


# output : Enter a number : +2
           number is : +2
            number is positive

             Enter a number : -1
             number is -1
             number is nagetive

             Enter a number : 0            
             number is : 0
             number is zero

              




