# 4 . Enter 3 Numbers do following arithmetic operation and find the one that
# is maximum and minimum
# 1. a + b * c 3. c + a / b
# 2. a % b + c 4. a * b + c


echo "Enter 3 Numbers"
read a
read b
read c

first=$(( $a + $b * $c ))
second=$(( $a % $b +$c ))
third=$(( $c + $a / $b ))
fourth=$(( $a * $b + $c ))

if [ $first -gt $second ] && [ $first -gt $third ] && [ $first -gt $fourth ]
then
  echo "First is maximum"
elif [ $second -gt $first ] && [ $second -gt $third ] && [ $second -gt $fourth ]
then
  echo "Second is maximum"
elif [ $third -gt $second ] && [ $third -gt $first ] && [ $third -gt $fourth ]
then
  echo "Third is maximum"
elif [ $fourth -gt $second ] && [ $fourth -gt $third ] && [ $fourth -gt $first ]
then
  echo "Fourth is maximum"
fi


if [ $first -lt $second ] && [ $first -lt $third ] && [ $first -lt $fourth ]
then
  echo "First is minimum"
elif [ $second -lt $first ] && [ $second -lt $third ] && [ $second -lt $fourth ]
then
  echo "Second is minimum"
elif [ $third -lt $second ] && [ $third -lt $first ] && [ $third -lt $fourth ]
then
  echo "Third is minimum"
elif [ $fourth -lt $second ] && [ $fourth -lt $third ] && [ $fourth -lt $first ]
then
  echo "Fourth is minimum"
fi

