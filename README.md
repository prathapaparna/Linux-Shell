# Linux-Shell

Extract IP address form log file using grep

```
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" access.log | sort | uniq -c | sort -n
```
## Linux commands to check CPU Utilization ,memory and disk.
```
free -h    # memory info
top        # cpu utilisation, load avaerage
df -h       # disk free of file system
du -h /path/to/dir # disk usage of dir and files
```


