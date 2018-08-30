#!/bin/bash 
let sum=0
for num in $(ls)
	do
		#let "sum = $sum + $num"
        echo "Myfile" $num
	done
#echo $sum