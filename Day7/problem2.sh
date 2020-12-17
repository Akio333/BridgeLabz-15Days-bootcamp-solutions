# 2. Extend the above program to sort the array and then find the 2nd largest
# and the 2nd smallest element.
declare -a array
n=10
for ((c=0;c<10;c++))
do
  array[c]=$(($RANDOM%1000))
done
echo "Array [Not Sorted]: "${array[@]}
for((i=0;i<10;i++))
do
  for((j=0;j<10-i-1;j++))
  do
    if [ ${array[$j]} -gt ${array[$j+1]} ]
    then
      temp=${array[j]}
      array[$j]=${array[$j+1]}
      array[$j+1]=$temp
    fi
  done
done

secondLargest=${array[1]}
secondSmallest=${array[$n-2]}
echo "Array [Sorted]: "${array[@]}
echo "Second Largest Number: $secondLargest"
echo "Second Smallest Number: $secondSmallest"



