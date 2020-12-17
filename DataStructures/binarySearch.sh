
declare -a array
echo "Enter no of elements:"
read n
echo "Enter values in ascending order"
for ((c=0;c<$n;c++))
do
  read array[$c]
done
echo ${array[@]}
echo "enter element to search:"
read val
x=$(($n/2))
while [ $x -gt 0 ] || [ $x -lt $n ]
do
  if [ $val -eq ${array[$x]} ]
  then
    echo "Value found at $x index"
    break
  fi
  if [ $val -gt ${array[$x]} ]
  then
    x=$(($x*3/2))
  else
    x=$(($x/2))
  fi
done
