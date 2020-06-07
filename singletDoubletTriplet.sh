#!/bin/bash -x


arr[1]="H"
arr[2]="T"
while [[ $count -lt 10 ]];
do
        toss=$((RANDOM%2))
    	toss=$(( $RANDOM%2 ))
        if [ $toss -eq 1 ]
        then
                let H++
        else
                let T++
        fi
	let count++

done

for i in {1..2}
do
        echo "${arr[$i]} : $((${arr[$i]}))"
done
if [[ $H -gt $T ]]
then
	echo "Head won with " $(( $H * 100 / 10 )) "%"
else
	echo "Tail won with " $(( $T * 100 / 10 )) "%"
fi
echo
echo
echo
echo


arr[3]="HH"
arr[4]="HT"
arr[5]="TH"
arr[6]="TT"

for i in {0..19}
do
        coinA=$((RANDOM%2))
        coinB=$((RANDOM%2))
        if [ $coinA -eq '1' -a $coinB -eq '1' ]
        then
                let HH++

        elif [ $coinA -eq '1' -a $coinB -eq '0' ]
        then
                let HT++

        elif [ $coinA -eq '0' -a $coinB -eq '1' ]
        then
                let TH++
        else
                let TT++
        fi
done



for i in {3..6}
do
        echo " ${arr[$i]} : $((${arr[$i]}))"
done

i=3
j=$((${arr[$i]}))
for ((i=3;i<7;i++));
do
	k=$((${arr[$i]}))
	if [[ $k -gt $j ]]
	then
		j=$((${arr[$i]}))
		winner=${arr[$i]}

	fi
done
echo " $winner won by " $(( $j * 100 / 20)) "%"


arr[7]="HHH"
arr[8]="HHT"
arr[9]="HTH"
arr[10]="HTT"
arr[11]="THH"
arr[12]="THT"
arr[13]="TTH"
arr[14]="TTT"
for((i=0;i<40;i++)){

        coinA=$((RANDOM%2))
        coinB=$((RANDOM%2))
        coinC=$((RANDOM%2))
        if [ $coinA -eq '1' -a $coinB -eq '1' -a $coinC -eq '1' ]
        then
                let HHH++
        elif [ $coinA -eq '1' -a $coinB -eq '1' -a $coinC -eq '0' ]
        then
                let HHT++

        elif [ $coinA -eq '1' -a $coinB -eq '0' -a $coinC -eq '1' ]
        then
                let HTH++

        elif [ $coinA -eq '1' -a $coinB -eq '0' -a $coinC -eq '0' ]
        then
                let HTT++

        elif [ $coinA -eq '0' -a $coinB -eq '1' -a $coinC -eq '1' ]
        then
                let THH++

        elif [ $coinA -eq '0' -a $coinB -eq '1' -a $coinC -eq '0' ]
        then
                let THT++

        elif [ $coinA -eq '0' -a $coinB -eq '0' -a $coinC -eq '1' ]
        then
                let TTH++

        elif [ $coinA -eq '0' -a $coinB -eq '0' -a $coinC -eq '0' ]
        then
                let TTT++

        fi
}
echo
echo
echo

for i in {7..14}
do
	 echo " ${arr[$i]} : $((${arr[$i]}))"
done

i=7
j=$((${arr[$i]}))
for ((i=7;i<15;i++));
do
        k=$((${arr[$i]}))
        if [[ $k -gt $j ]]
        then
                j=$((${arr[$i]}))
                winner=${arr[$i]}

        fi
done
echo " $winner won by " $(( $j * 100 / 20)) "%"







echo
echo
echo "Before Sorting"
for i in {1..14}
do
        echo " $i   ${arr[$i]} : $((${arr[$i]}))"
done

echo
echo
for ((i = 1; i<=14; i++))
do
    for ((j = 1; j<=14-i; j++))
    do
        if [[ ${arr[$j]} -lt ${arr[$(($j+1))]} ]]
        then
            # swap
            temp=${arr[$j]}
            arr[$j]=${arr[$(($j+1))]}
            arr[$(($j+1))]=$temp
        fi
    done
done
echo "After sorting"

for key in ${!arr[@]}
do
        echo " $key    ${arr[$key]}   $((${arr[$key]}))  "
done

echo "Winning combination is"
for i in ${!arr[@]}
do
        echo ${arr[$i]}
        exit
done

