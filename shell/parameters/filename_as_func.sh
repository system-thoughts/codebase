#!/bin/bash
# implement the corresponding function according to the file name

name=$(basename $0)
if [ $name = "add" ]; then
	total=$[ $1 + $2 ]
elif [ $name = "mul" ]; then
	total=$[ $1 * $2 ]
fi

echo The caculation value is $total
