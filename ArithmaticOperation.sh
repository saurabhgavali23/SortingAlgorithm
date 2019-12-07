#!/bin/bash -x

read -p "Enter The First Value " a
read -p "Enter The Second Value" b
read -p "Enter The Third Value" c

result=$((($a+$b)+$c))
echo $result
