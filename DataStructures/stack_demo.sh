declare -a stack
top=0
function push() {
	echo "Enter element to push"
	read in
	stack[top]=$in
	((top++))
	echo "Element is added to stack."
}

function pop() {
	if [ $top -lt 0 ]
	then
		echo "Your stack is empty"
	else
		echo "Element ${stack[top]} is removed"
    unset stack[top]
		((top--))
	fi
}


while [ True ]
do
	echo "enter choice: 1] Add element 2] remove element 3] print stack 4] exit"
	read choice
	case $choice in
		1)
			push
			;;
		2)
			pop
			;;
		3)
			echo "${stack[@]}"
			;;
		4)
			exit 1
	esac
done
