# Linux-Shell

Extract IP address form log file using grep
```
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" access.log | sort | uniq -c | sort -n
```

----------------------------------------
In a given directory identify shell script files ( file names ends with .sh ), 
check whether shebang line exsists or not. if its present dont do any change else insert shebang ( /bin/bash )

```
vi shebang.sh
```
```

#!/bin/bash
for file in /dir1/*.sh; do
    if [ "`head -c 2 $file`" = "#!" ]; then
      echo "Hashbang present"
    else
      echo "no Hashbang present"
	  sed -i '1 i #!/bin/bash' file.sh
	
    fi
```
