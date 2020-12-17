# 2. Write a program that takes a command-line argument n and prints the nth harmonic
# number. Harmonic Number is of the form Hn=1/1+1/2+1/3+1/4 .... + 1/n

#!/bin/bash +x

Hn=1
echo "Enter Number: "
read n
for (( c=2; c<=n; c++ ))
do
  Hn=`echo "scale=4; $Hn + ( 1 / $c )"|bc`
done
echo "Harmonic Number for $n is = "$Hn

