# prob 11) Print list of last 4 frequently access unique urls at partucular hours from /var/log/httpd/access.log

#! /bin/bash
echo -e |cat access.log | awk '{print $4"["$11}' | sort | uniq -c | sort -r |head -4 | awk -F[ '{print $1  $2"--"$3}'