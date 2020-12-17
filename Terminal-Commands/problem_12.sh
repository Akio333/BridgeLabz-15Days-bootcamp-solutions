# prob 12) Print list of web response code count in the unique sorted at specific hours

# /bin/bash
echo -e |cat access.log | awk '{print $9}' | sort | uniq -c | sort -nr |head -4