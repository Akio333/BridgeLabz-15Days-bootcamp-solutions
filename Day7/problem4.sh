declare -a array
echo "Enter 3 integers"
read array[0]
read array[1]
read array[2]

temp=0
for((i=0;i<3;i++))
do
  temp=$(($temp+${array[$i]}))
done
if [ $temp -eq 0 ]
then
  echo "Addition is Zero"
else
  echo "Addition is non zero"
fi

