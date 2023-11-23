# write a program to calculate a factorial of 5(5*4*3*2*1) ?

#!/bin/bash
fact=1
for (( a=1; a<=5; a++ ))
do
fact=$((fact * a))
done
echo "Factorial of a five is :$fact"


# output : Factorial of five is : 120
