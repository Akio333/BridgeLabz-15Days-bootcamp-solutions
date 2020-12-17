# 1. Write a program in the following steps
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

declare -a array
for ((c=0;c<10;c++))
do
  array[c]=$(($RANDOM%1000))
done
secondLargest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head -1)
secondSmallest=$(printf '%s\n' "${array[@]}" | sort -nu | head -2 | tail -1)
echo "Array: "${array[@]}
echo "Second Largest Number: $secondLargest"
echo "Second Smallest Number: $secondSmallest"



