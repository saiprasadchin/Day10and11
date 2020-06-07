echo "Enter the value of a:"
read a
echo "Enter the value of b:"
read b
echo "Enter the value of c:"
read c
echo "The values entered are $a , $b , $c"
echo "Computing a + b * c"
echo "Result:" $(($a + $b * $c))
echo "Result:" $(($a + $b * $c))
res1=$(($a + $b * $c))
echo "Computing a * b + c"
echo "Result:" $(($a * $b + $c))
res2=$(($a * $b + $c))
echo "Computin c + a / b"
echo "Result:" $(($c + $a / $b))
res3=$(($c + $a / $b))
echo "Computing a % b + c"
echo "Result:" $(($a % $b + $c))
res4=$(($a % $b + $c))
declare -A arr
arr["key1"]=$res1
arr["key2"]=$res2
arr["key3"]=$res3
arr["key4"]=$res4
i=0
for key in ${!arr[@]};
do
        echo ${key} ${arr[$key]}
        array[$i]=${arr[$key]}
        let "i+=1"
done
echo "Dictionary is in array" ${array[@]}
for ((i = 0; i<4; i++))
do
    for ((j = 0; j<4-i-1; j++))
    do
        if [[ ${array[j]} -gt ${array[$(($j+1))]} ]]
        then
            # swap
            temp=${array[j]}
            array[$j]=${array[$(($j+1))]}
            array[$(($j+1))]=$temp
        fi
    done
done

echo "Sorted Array in ascending order:" ${array[@]}

for ((i = 0; i<4; i++))
do
    for ((j = 0; j<4-i-1; j++))
    do
        if [[ ${array[j]} -lt ${array[$(($j+1))]} ]]
        then
            # swap
            temp=${array[j]}
            array[$j]=${array[$(($j+1))]}
            array[$(($j+1))]=$temp
        fi
    done
done
echo "Sorted Array in descending order:" ${array[@]}
