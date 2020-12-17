startAmount=100
winAmount=200
brokeAmount=0
betsMade=0
wins=0

echo "Starting Gamble with Rs. 100"
while true
do
  echo "Enter bet amount:"
  read bet
  if [ $(($RANDOM%2)) -eq 1 ]
  then
    ((betsMade++))
    startAmount=$(( $startAmount + $bet ))
    echo "Bet no. $betsMade won!"
    echo "Current credits: $startAmount"
  else
    ((betsMade++))
    startAmount=$(( $startAmount - $bet ))
    echo "Bet no.$betsMade lost!"
    echo "Current credits: $startAmount"
  fi
  if [ $startAmount -ge $winAmount ]
  then
    echo "You've won the gamble !"
    echo "You've recieved Rs. $startAmount "
    break
  elif [ $startAmount -le 0 ]
  then
    echo "You lost gamble and you are broke AF!"
    break
  fi
  echo "Do you want to continue y/n? "
  read choice
  case $choice in
    y)
      continue
      ;;
    Y)
      continue
      ;;
    n)
      echo "Leaving gamble with rs. $startAmount money"
      break
      ;;
    N)
      echo "Leaving gamble with rs. $startAmount money"
      break;;
  esac
done


