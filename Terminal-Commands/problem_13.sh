# prob 13) Print list of 10 unique sorted client IP /var/log/httpd/access.log

# /bin/bash

cat access.log | awk '{if (NR!=1) {print substr($16, 2, length($16)-2)}}' | sort -nr | head -10