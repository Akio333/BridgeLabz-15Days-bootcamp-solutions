echo "enter limit:"
read n
echo "enter number in array:"
for((i=0;i<n;i++))
do
  read array[$i]
done

for((i=0;i<n-1;i++))
do
  small=${array[$i]}
  index=$i
  for((j=i+1;j<n;j++))
  do
  if [ ${array[$j]} -lt $small ]
  then
    small=${array[$j]}
    index=$j
  fi
  done
  temp=${array[$i]}
  arr[$i]=${array[$index]}
  arr[$index]=$temp
done

echo "Sorted array:"
echo ${array[@]}
