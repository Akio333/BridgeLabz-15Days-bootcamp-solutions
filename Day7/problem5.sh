# 5. Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
# etc and store them in an array

declare -a array
j=0
for((i=0;i<100;i++))
do
  temp=$(($i%11))
  if [ $temp -eq 0 ]
  then
    array[$j]=$i
    ((j++))
  fi
done

echo "Repeated numbers: ${array[@]}"
