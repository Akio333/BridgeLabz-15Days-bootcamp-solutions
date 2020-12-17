# prob 3) Append current data to all log files name which has extension .log.1 from a folder

#! /bin/bash
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
dte=`date +'%d%m%Y'`
for file in `ls *log*1`
do
	ftoken=`echo $file | awk -F. '{print $1}'` 
	stoken=`echo $file | awk -F. '{print $2}'`
	ttoken=`echo $file | awk -F. '{print $3}'`
	newName=`echo "$ftoken.$dte.$stoken.$ttoken"`
	echo $newName
	mv $file $newName
done