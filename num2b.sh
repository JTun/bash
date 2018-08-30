#!/bin/bash

if [[ $num1 -lt 10 ]] || [[ "$num2" -lt 10 ]]; then
		#echo "$num1 + $num2=$(($num1 + $num2))"
        for i in $(seq 10)
	do
		echo "Number=" $i
        done
	else
    echo "$(( $num1 * $num2 ))"
fi
