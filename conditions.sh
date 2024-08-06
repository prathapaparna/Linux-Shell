#!/bin/bash
#!/bin/bash
#!/bin/bash
#!/bin/bash
read -p "provide value for a:" a
read -p "provide value for b:" b
if [ $a -ge $b ]
then
  if [ $a == $b ]
  then
   echo "both equal"
  else
   echo "not equal" 
  fi 
elif [ $a -lt $b ] 
then
   echo "a is less than b"  
else
   echo "$a is less than $b"   
fi  
