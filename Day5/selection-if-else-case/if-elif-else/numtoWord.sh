
# 1. Read a single digit number and write the number in word

declare -a numbers
numbers=("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")
echo "Enter one digit number"
read num
echo ${numbers[num]}
