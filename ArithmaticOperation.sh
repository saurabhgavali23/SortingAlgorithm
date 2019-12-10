#!/bin/bash -x
counter=0

read -p "Enter The First Value " a
read -p "Enter The Second Value " b
read -p "Enter The Third Value " c

declare -A storeOperations

result1=$(( $a + $b + $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $a / $b ))
result4=$(( $a % $b + $c ))

storeOperations["Result_1"]=$result1
storeOperations["Result_2"]=$result2
storeOperations["Result_3"]=$result3
storeOperations["Result_4"]=$result4

for result in ${!storeOperations[@]}
do
	arrayResult[((counter++))]=${storeOperations[$result]}
done

#Descending Array
echo $(printf "%s\n" ${arrayResult[@]} | sort -nr)

#Ascending Array
echo $(printf "%s\n" ${arrayResult[@]} | sort -n)

