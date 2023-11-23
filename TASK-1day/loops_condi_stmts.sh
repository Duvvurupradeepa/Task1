 # Task2 : Develop a program  the number 1 to 5 tell you each number is Even or odd ?


#!/bin/bash
for number in {1..5}  #initiate a loop
do 
if [ $((number % 2)) -eq 0 ]; then
echo "number $number is Even"
else
echo "number $number is Odd"
fi  
done


# output : number 1 is odd
           number 2 is even
           number 3 is odd
           number 4 is even   
           number 5 is odd
