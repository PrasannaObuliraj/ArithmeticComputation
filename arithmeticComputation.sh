#!/bin/bash -x

read -p "Enter number for a: " a
read -p "Enter number for b: " b
read -p "Enter number for c: " c

declare -A operationDic
declare -a operationArray
operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
operation3=$(($a+$b/$c))
operation4=$(($a%$b+$c))

for (( i=1 ; i<=4 ; i++ ))
do
	operationDic[$i]=$((operation$i))
done

for (( j=0 ; j<4 ; j++ ))
do
	operationArray[$j]=${operationDic[$(($j+1))]}
done
