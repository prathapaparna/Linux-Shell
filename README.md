# Linux-Shell

Extract IP address form log file using grep

```
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" access.log | sort | uniq -c | sort -n
```

