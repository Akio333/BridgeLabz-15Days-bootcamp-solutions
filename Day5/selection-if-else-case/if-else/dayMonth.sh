echo "Enter Month number"
read month
echo "Enter day number"
read day

if [ $month -eq 3 ]
then
  if [ $day -gt 19 ] && [ $day -lt 32 ]
  then
    echo "True"
  else
    echo "False"
 fi
fi

if [ $month -eq 6 ]
then
  if [ $day -lt 21 ]
  then
    echo "True"
  else
    echo "False"
  fi
fi

if [ $month -gt 3 ] && [ $month -lt 6 ]
then
  if [ $day -lt 31 ]
  then
    echo "True"
  else
    echo "False"
  fi
fi
