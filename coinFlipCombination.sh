#!/bin/bash
isHeads=1
isTails=0
flip=$((RANDOM%2))
if [ $flip -eq $isHeads ]
then
	echo "Heads"
else
	echo "Tails"
fi
