#!/bin/sh
multi_table() {
	j=1
	while [ $j -le $1 ]
	do
		i=1
		while [ $i -le $2 ]
		do
			k=`expr $i \* $j`
			printf "%d*%d=%d " ${j} ${i} ${k}
			i=`expr $i + 1`
		done
		printf "\n"
		j=`expr $j + 1`
	done
}
num_check() {
	num=$1
	if [ $num -eq $num ] 2>/dev/null;
	then continue	
	else
		echo "It's not a number"
		exit -1
	fi
}
num_check $1
num_check $2
multi_table $1 $2
exit 0
