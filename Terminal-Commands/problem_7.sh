# prob 7) Set Environment usersecret="dH34xJaa23" if its already not set

#! /bin/bash
len=`echo $usersecret`
lenu=`echo ${#len}`
if [ ${#len}==0 ]
then
	value="dH34xJaa23"
	export usersecret=$value
	echo "all set"
else
	echo "error : env already set"
fi