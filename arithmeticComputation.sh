#!/bin/bash -x

read -p "Enter number for a: " a
read -p "Enter number for b: " b
read -p "Enter number for c: " c

operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
