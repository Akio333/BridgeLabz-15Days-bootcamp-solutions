# prob 5) Chcek if a folder exists or not. iF it's not present, create it.

#!/bin/bash
if [ -d "myFolder" ]
then
	echo "folder already exists!!"
else
	mkdir myFolder
	echo "$foldername created"
fi 