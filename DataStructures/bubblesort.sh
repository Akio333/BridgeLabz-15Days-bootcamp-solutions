declare -a array
echo "Enter limit:"
read n
echo 'enter array values'
for ((c=0;c<n;c++))
do
  read array[$c]
done

for ((i=0;i<n;i++))
do
  for ((j=0;j<n-i-1;j++))
  do
    if [ ${array[$j]} -gt ${array[$(($j+1))]} ]
    then
      temp=${array[j]}
      array[$j]=${array[$(($j+1))]}
      array[$(($j+1))]=$temp
    fi
  done
done

echo "Sorted array:"
echo ${array[@]}
