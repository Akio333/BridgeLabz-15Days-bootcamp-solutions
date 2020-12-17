declare -a que
end=0

function enqueu() {
  que[$end]=$1
  ((end++))
}

function deque() {
  if [ $end -eq 0 ]
  then
    echo "Your queue is empty!!!!!"
  else
    echo "value ${que[0]} has been removed"
    unset que[0]
    for((i=0;i<$end;i++))
    do
      que[i]=${que[$i+1]}
    done
    ((end--))
  fi
}

while [ True ]
do
  echo "Choose: 1] Add to queue 2] remove from queue 3] print queue 4] exit "
  read choice
  case $choice in
    1)
      echo "Enter value to be added:"
      read val
      enqueu $val
      echo "value $val ha been added"
      ;;
    2)
      deque
      ;;
    3)
      echo "${que[@]}"
      ;;
    4)
      exit 1
  esac
done
