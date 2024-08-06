#!/bin/bash
#!/bin/bash
#!/bin/bash
#!/bin/bash
Threshold=80
#Disk usage
diskuse=$(df / | awk 'NR==2 { print $6 }' | sed 's/%//')
echo $diskuse

if [ $diskuse -ge $Threshold ]
then 
   echo "send email notification"
   
else
   echo "dis use is less than threshold"   
fi