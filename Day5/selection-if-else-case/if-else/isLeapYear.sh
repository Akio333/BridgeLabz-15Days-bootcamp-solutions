echo "Enter year Number"
read year
century=$(( $year % 100 ))
megaLeap=$(( $year % 400 ))
miniLeap=$(( $year % 4 ))
if [ $century -eq 0 ]
then
  if [ $megaLeap -eq 0 ]
  then
    echo "The year $year is Leap."
  else
    echo "The year $year is not Leap."
  fi
else
  if [ $miniLeap -eq 0 ]
  then
    echo "The year $year is Leap."
  else
    echo "The Year $year is not Leap"
  fi
fi

