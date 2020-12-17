# prob 4) Archive the files from /var/log folder which have modified 7 days ago and move it to your backup folder

#! /bin/bash
destination="$PWD/terminal-commands/logs"
for file in `find /var/log -type f -mtime +7`
do
	cp $file $destination
done