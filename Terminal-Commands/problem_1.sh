# prob 1) Get User from /etc/passwd and change oqnership of user's home 
#!/bin/bash
paths=`cat /etc/passwd | awk -F: '{if($4 > 1000) print $7}'`
linecount=`echo "$paths" | wc -l`
for path in $paths
do
dircontent=`ls -l $path`
sudo chown $USER:$USER $path
echo -e "$path : $dircontent"
done