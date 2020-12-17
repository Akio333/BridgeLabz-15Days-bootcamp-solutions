# prob 6) Execute command "hello" and "ls" and check its execution status and print whether command executed successfully or not.

#!/bin/bash
abc=`hello`
if [ $? == 0 ]
then
	echo "command executed successfully!!"
else
	echo -e "hello"
	echo "command failed to execute"
fi

xyz=`ls`
if [ $? == 0 ]
then
	echo -e "ls"
        echo "command executed successfully!!"
else
        echo "command failed to execute"
fi