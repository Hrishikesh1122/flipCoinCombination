#!/bin/bash -x
isHeads=1
isTails=0
function doublet()
{
 declare -A dict2
 countHH=0;countHT=0;countTH=0;countTT=0;
 for ((i=0;i<10;i++))
 do
   flip=$((RANDOM%4))
   case $flip in
   	0)echo "HH"
        countHH=$(($countHH+1))
	;;
        1)echo "HT"
        countHT=$(($countHT+1))
        ;;
        2)echo "TH"
        countTH=$(($countTH+1))
        ;;
        3)echo "TT"
        countTT=$(($countTT+1))
        ;;
   esac
   dict2[HH]=$countHH
   dict2[HT]=$countHT
   dict2[TH]=$countTH
   dict2[TT]=$countTT
   PercentHH=$((${dict2[HH]}*100/10))
   PercentHT=$((${dict2[HT]}*100/10))
   PercentTH=$((${dict2[TH]}*100/10))
   PercentTT=$((${dict2[TT]}*100/10))
 done

}

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
doublet
