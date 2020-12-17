
# 2. Read a Number and Display the week day (Sunday, Monday,...)

declare -a weekdays
weekdays=("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday")
echo "Enter number of day:"
read day
echo "Today is "${weekdays[$day-1]}

