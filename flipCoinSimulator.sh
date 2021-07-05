#!/bin/bash
head=0
tail=0
for((count=0;count<20;count++))
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		echo "Heads: won"
		((head++))
	else
		echo "Tails: won"
		((tail++))
	fi
done
echo "No of times> Heads won:$head, Tails won: $tail"
