# 2. Write a Program to generate a birth month of 50 individuals between the
# year 92 & 93. Find all the individuals having birthdays in the same month.
# Store it to finally print.

declare -a month
declare -A birthdays

month=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")

for i in ${month[@]}
do
  birthdays[$i]=0
done
for((i=0;i<50;i++))
do
  random=$(($RANDOM%12))
  m=${month[$random]}
  birthdays[$m]=$((${birthdays[$m]}+1))
done

echo "no of ndivisuals having bdays in same month: "

for i in ${month[@]}
do
  echo "$i  ${birthdays[$i]}"
done

