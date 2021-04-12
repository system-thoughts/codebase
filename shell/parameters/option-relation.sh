#!/bin/bash
# handle options' relationship

set -- $(getopt -q "t:x:h" "$@")
while [ -n "$1" ]
do
	case "$1" in
		-t) tar=true
			tar_param="$2"
			shift ;;
		-x) extract=true
			extract_param="$2"
			shift ;;
		--) shift
			break ;;
		*) echo "$1 is unrecognized"
	esac
	shift
done

if [[ $tar == true && $extract == true ]]; then
	echo "Cannot specify -t -x options at the same time"
	exit 1
elif [[ $tar == true ]]; then
	echo "Exec $(basename $0) -t $tar_param ..."
elif [[ $extract == true ]]; then
	echo "Exec $(basename $0) -x $extract_param ..."
fi

count=1
for param in $@
do
	echo "parameter #$count is $param"
	count=$[ $count + 1 ]
done
