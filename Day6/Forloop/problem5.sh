# 5. Write a program that computes a factorial of a number taken as input.
# 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

#!/bin/bash -x

read -p "Enter Number: " n
factorial=1
for (( i=2; i<=n; i++ ))
do
  factorial=$((factorial*i))
done
echo "Factorial is = "$factorial

