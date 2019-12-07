#!/bin/bash -x

read -p "Enter The First Value " a
read -p "Enter The Second Value " b
read -p "Enter The Third Value " c

declare -A storeOperations

result1=$((($a+$b)+$c))

result2=$((($a*$b)+$c))

result3=$((($c+$a)/$b))

result4=$((($a%$b)+$c))

storeOprations["Result_1"]=$result1
storeOprations["Result_2"]=$result2
storeOprations["Result_3"]=$result3
storeOprations["Result_4"]=$result4
