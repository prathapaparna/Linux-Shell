#!/bin/bash
#!/bin/bash
#!/bin/bash
#!/bin/bash
read -p "filename:" filename
if [ -w $filename ]
then
   echo "file has write permission"
else
   echo "file has not read and write permission permission"
   echo $filename
   chmod 500 $filename
   
   echo "permisions provided"
fi    