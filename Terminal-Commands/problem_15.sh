#  prob 15) Find the difference between original file and the updated file. Apply changes to the original file.

#! /bin/bash
diff=`diff -iEZ $PWD/linux-content/original/original-file.sh $PWD/linux-content/updated/updated-file.sh`
echo ${#diff}
if [ ${#diff} -gt 0 ]
then
	echo "There is Difference in Files"
	cp $PWD/linux-content/original/original-file.sh $PWD/linux-content/updated/updated-file.sh
	echo "applied changes to UpdatdeFolder"
else
	echo "No difference!! "
fi
if [ -d 'original-backup' ]
then
	cp$PWD/linux-content/original/original-file.sh $PWD/linux-content/original-backup
else
	mkdir original-backup
	cp $PWD/linux-content/original/original-file.sh $PWD/linux-content/original-backup
fi
diff2=`diff -iEZ $PWD/linux-content/original-backup/original-file.sh $PWD/linux-content/updated/updated-file.sh`
if [ ${#diff2} == 0 ]
then
	echo "Changes Applied Successfully.... Backup Created!"
else
	echo "differ in updated - backup"
fi