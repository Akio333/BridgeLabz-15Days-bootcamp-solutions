# prob 10) Print last 4 frequently access urls count in sorted order from /var/log/httpd/access.log

# /bin/bash

cat access.log | awk '{print $11}' | grep -v '"-"' | sort | uniq -c | sort -nr | head -4