#!/bin/bash
echo "Flip Coin Simulation"
echo "give number>42 (either head or tail can be 21) "
read val
num=-1
function flipCoin()
{
head=0
tail=0
val=$1
flag=$2
while [ $val -gt 0 ]
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		#echo "Heads: won"
		((head++))
		num=$(($head-$tail))
	else
		#echo "Tails: won"
		((tail++))
		num=$(($tail-$head))
	fi
	if [ $head -eq 21 ]
	then
		echo "Heads won over Tails by $(($head-$tail)) times"
		val=0
	elif [ $tail -eq 21 ]
	then
		echo "Tails won over Heads by $(($tail-$head)) times"
		val=0
	elif [ $flag -eq 2 -a $num -eq 2 ]
	then
		break
	else
		val=$val
		num=$num
	fi
	((val--))
done
echo "No of times> Heads won:$head, Tails won: $tail"
return $val
}
#function call
flipCoin $val 1
#function when tie
if [ $? -eq 0  -a  $num -eq 0 ]
then
	echo "Tie"
	flipCoin 5 2
fi
