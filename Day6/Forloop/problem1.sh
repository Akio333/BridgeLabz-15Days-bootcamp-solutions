# 1. Write a program that takes a command-line argument n and prints a table of the
# powers of 2 that are less than or equal to 2^n.

#!/bin/bash -x
echo "Enter a number:"
read n
for (( c=0; c<n; c++ ))
do
  echo $(( 2 ** $c ))
done

