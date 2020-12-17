# prob 8) Find a word "systemd" from all log files in the folder /var/log and print number of occurence more than 0 against each file.

#! /bin/bash
for log in `ls /var/log/*.log`
do
	count=`grep -c 'systemd' $log`
	if [ $count -gt 0 ]
	then
		echo $count
	fi
done