#!/bin/bash
random=$((RANDOM%2))
if [ $random -eq 1 ]
then
	echo "Heads: won"
else
	echo "Tails: won"
fi
