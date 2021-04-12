#!/bin/bash
# test $* and $@ difference, they both represent all the parameters

count=1
for param in "$*"
do
	echo "\$* parameter #$count = $param"
	count=$[ $count + 1 ]
done

count=1
for param in "$@"
do
	echo "\$@ parameter #$count = $param"
	count=$[ $count + 1 ]
done
