#!/bin/bash -x

read -p "Enter The First Value " a
read -p "Enter The Second Value " b
read -p "Enter The Third Value " c

echo $((($a+$b)+$c))

echo $((($a*$b)+$c))

echo $((($c+$a)/$b))

echo $((($a%$b)+$c))
