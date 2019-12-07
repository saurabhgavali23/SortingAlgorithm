#!/bin/bash -x

read -p "Enter The First Value " a
read -p "Enter The Second Value " b
read -p "Enter The Third Value " c

declare -A storeOperations
counter=0

result1=$((($a+$b)+$c))

result2=$((($a*$b)+$c))

result3=$((($c+$a)/$b))

result4=$((($a%$b)+$c))

storeOperations["Result_1"]=$result1
storeOperations["Result_2"]=$result2
storeOperations["Result_3"]=$result3
storeOperations["Result_4"]=$result4

for result in ${!storeOperations[@]}
do
arrayResult[((counter++))]=${storeOperations[$result]}
done

len=${#arrayResult[@]}
#Descending Array
for ((i=0;i<len;i++))
do
	for((j=$i+1;j<len;j++))
	do
		if [ ${arrayResult[$i]} -lt  ${arrayResult[$j]} ]
		then
				temp=${arrayResult[$j]}
			 	arrayResult[j]=${arrayResult[$i]}
			 	arrayResult[i]=$temp
		fi
	done
done

#Ascending Array

for ((i=0;i<len;i++))
do
	for((j=$i+1;j<len;j++))
	do
		if [ ${arrayResult[$i]} -gt  ${arrayResult[$j]} ]
		then
				temp=${arrayResult[$j]}
			 	arrayResult[j]=${arrayResult[$i]}
			 	arrayResult[i]=$temp
		fi
	done
done

echo ${arrayResult[@]}
