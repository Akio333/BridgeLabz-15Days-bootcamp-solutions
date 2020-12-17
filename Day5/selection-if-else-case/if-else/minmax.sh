max=0
array=()
while IFS= read -r -p "Next item (end with an empty line): " line; do
    [[ $line ]] || break  # break if line is empty
    array+=("$line")
done
min=${array[0]}
for num in ${array[@]}
do
        if [ $num -gt $max ]
        then
                max=$num
        fi
done

for num in ${array[@]}
do
        if [ $num -lt $min ]
        then
                min=$num
        fi
done


echo "The max elements is $max"
echo "The min element is $min"
