declare -a array
flag=0
echo "Enter no of elements:"
read n
echo "Enter values"
for ((c=0;c<$n;c++))
do
  read array[$c]
done
echo ${array[@]}
echo "enter element to search:"
read val

for ((c=0;c<$n;c++))
do
  if [ ${array[$c]} -eq $val ]
  then
    echo "Value is present at index $c"
    ((flag++))
  fi
done
if [ $flag -eq 0 ]
then
  echo "Value is not present in array"
fi

