# 3. Write a program that takes a input and determines if the number is a prime.

#!/bin/bash -x

echo "Enter number: "
read n
flag=0
if [ $n -eq 2 ]
then
  echo "Number $n is Prime"
  break
elif [ $n -lt 2 ]
then
  echo "Please enter number >= 2"
  break
fi
for (( c=2; c<n; c++ ))
do
  if [ $(($n%$c)) -eq 0 ]
  then
    flag=1
    break
  fi
done
if [ $flag -eq 1 ]
then
  echo "Number $n is Not prime"
else
  echo "Number $n is prime"
fi


