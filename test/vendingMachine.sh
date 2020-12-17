echo "Enter Ammount to be debited: "
read input
declare -a notes
notes=(1000 500 100 50 20 10 1)
note=0
echo ""
echo "The machine has despenced: "
for i in ${notes[@]}
do
	note=$(($input/$i))
	if [ $note -gt 0  ]
	then
		echo "$note notes of Rs.$i"
	fi
	input=$(($input%$i))
done
echo ""
echo "Have a Nice day!!"

