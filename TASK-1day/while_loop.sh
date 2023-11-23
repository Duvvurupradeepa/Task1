# develop a prog that starts counting backwords from 5 to 1 showing each other ?


#!/bin/bash
count=5
while [ $count -ge 1 ]; do
   echo "count is $count"
   count=$((count-1))
done 



# output : count is 5
           count is 4
           count is 3
           count is 2
           count is 1
