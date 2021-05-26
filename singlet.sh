#!/bin/bash -x
isHeads=1
isTails=0
function singlet()
{
 headcount=0
 tailcount=0
 for ((i=0;i<10;i++))
 do
  flip=$((RANDOM%2))
  if [ $flip -eq $isHeads ]
  then
	echo "Heads"
	headcount=$(($headcount+1))
  else
	echo "Tails"
	tailcount=$(($tailcount+1))
  fi
 done
 declare -A dict1
 dict1[H]=$headcount
 dict1[T]=$tailcount
 PercentH=$((${dict1[H]}*100/10))
 PercentT=$((100-$PercentH))
 echo "Percenage of HEADS is $PercentH and TAILS is $PercentT "
}
singlet
