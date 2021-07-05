#!/bin/bash
head=0
tail=0
val=0
while [ $val -eq 0 ]
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		#echo "Heads: won"
		((head++))
	else
		#echo "Tails: won"
		((tail++))
	fi
	if [ $head -eq 21 ]
	then
		echo "Heads won over Tails by $(($head-$tail)) times"
		val=1
	elif [ $tail -eq 21 ]
	then
		echo "Tails won over Heads by $(($tail-$head)) times"
		val=1
	else
		val=0
	fi
done
echo "No of times> Heads won:$head, Tails won: $tail"
