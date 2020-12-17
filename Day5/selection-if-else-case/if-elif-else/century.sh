
# Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

echo "Enter Number 1, 10, 100, 1000, 10000, 100000 : "
read num
if [ $num -eq 1 ]
then
  echo "unit"
elif [ $num -eq 10 ]
then
  echo "Ten"
elif [ $num -eq 100 ]
then
  echo "Hundread"
elif [ $num -eq 1000 ]
then
  echo "Thousand"
elif [ $num -eq 10000 ]
then
  echo "Ten Thousand"
elif [ $num -eq 10000 ]
then
  echo "Hundread Thousand"
elif [ $num -eq 1000000 ]
then
  echo "Million"
else
  echo "Better luck next time 😜"
fi

