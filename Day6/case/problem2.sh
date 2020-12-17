# 2. Write a function to check if the two numbers are Palindromes

function palindrome() {
  s=0
  num=$1
  rev=""
  temp=$2
  while [ $num -gt 0 ] 
  do
	  s=$(( $num % 10 )) 
	  num=$(( $num / 10 ))  
    rev=$(( echo ${rev}${s} )) 
  done
  if [ $temp -eq $rev ] 
  then
	  echo "Numbers are palindrome"
  else
	  echo "Numbers are NOT palindrome"
  fi
}

echo "Enter first Number:"
read num1
echo "Enter second Number:"
read num2
palindrome num1 num2
