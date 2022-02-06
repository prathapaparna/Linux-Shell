#!/bin/bash
for file in /dir1/*.sh; do
    if [ "`head -c 2 $file`" = "#!" ]; then
      echo "Hashbang present"
    else
      echo "no Hashbang present"
	  sed -i '1 i #!/bin/bash' file.sh
	
    fi
