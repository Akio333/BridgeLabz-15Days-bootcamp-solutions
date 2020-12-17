#!/bin/bash

# 1. Use Random Function (( RANDOM )) to get Single Digit

random=$(($RANDOM))
echo "Random Number: "$random


# 2. Use Random to get Dice Number between 1 to 6
# 3. Add two Random Dice Number and Print the Result

random=$(($RANDOM%6+1))
echo "Current Dice Face: "$random


# 4. Write a program that reads 5 Random 2 Digit values , 
# then find their sum and the average

n=5
sum=0
for(( i = 0; i < $n; i++ ))
do
  read values
  sum=`expr $sum + $values`
done
echo "Sum = "$sum


# 5. Unit Conversion
# a. 1ft = 12 in then 42 in = ? ft
# b. Rectangular Plot of 60 feet x 40 feet in meters
# c. Calculate area of 25 such plots in acres

echo "UNIT CONVERSION"
echo "Enter Distance in inches"
read inch
in=12
feet=`echo "scale=2; $inch / $in" | bc`
echo $feet "Ft"

echo "Enter rectangle Height (in feet)"
read h
echo "enter rectangle width (in feet)"
read w
area=$(( $(( 2 * $h )) + $(( 2 * $w ))  ))
sqmeter=`echo "scale=2; $area / 10.76" |bc`
echo "Area In meter: "$sqmeter
area25=`echo "scale=2; $sqmeter * 25" |bc`
acres=`echo "scale=4; $area25 / 4047"|bc`
echo "Area for such 25 plots in acre = "$acres

