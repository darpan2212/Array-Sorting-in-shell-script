declare -a intArr;

for ((i=0;i<10;i++))
do
	intArr[$i]=$((RANDOM%100));
done

echo "Original array :- "${intArr[@]};

for((i=0;i<${#intArr[@]};i++))
do
	for((j=i+1;j<${#intArr[@]};j++))
	do
		if [ ${intArr[i]} -gt ${intArr[j]} ]
		then
			temp=${intArr[i]};
			intArr[i]=${intArr[j]};
			intArr[j]=$temp;
		fi
	done
done

echo "Sorted array :- " ${intArr[@]}
