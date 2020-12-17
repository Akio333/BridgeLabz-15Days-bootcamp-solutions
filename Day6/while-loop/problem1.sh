# 1. Write a program that takes a command-line argument n and prints a
# table of the powers of 2 that are less than or equal to 2^n till 256 is
# reached..

#!/bin/bash -x

n=$1
n2=$(( 2 ** n ))
i=1
while [ $(( 2 ** i )) -le $n2 ]
do
  if [ $(( 2 ** i )) -le 256 ]
  then
    echo $(( 2 ** i ))
    ((i++))
  else
    break
  fi
done



