#!/bin/bash
echo -n "Enter number 1 < x < 10: "
read num1
echo -n "Enter 2nd number 1 < x < 10:"
read num2
if [[ $num1 -lt 10 ]] || [[ "$num2" -lt 10 ]]; then
		#echo "$num1 + $num2=$(($num1 + $num2))"
        for i in $(seq 10)
	do
		echo "Number=" $i
        done
	else
    echo "$(( $num1 + $num2 ))"
fi
