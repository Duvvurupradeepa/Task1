# write a program that keep asking until you type the word Quit ?

#!/bin/bash

while true; do
 echo "Enter command Quit"
read input
if [ "$input" == "Quit" ]; then
 echo "Exit the script"
break
else
 echo "You entered : $input"
fi
done




# output : youentered : 
           entered command quit
          ctrl+c

