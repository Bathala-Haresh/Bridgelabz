#! /bin/bash -x
echo -e "enter how many 3 random number you want to generate:\c "
read num
count=0

function generateNumber()
{
    num=$1
    while (($num!=0))
    do
       n=$((RANDOM%1000))
       if [ $n -gt 99 -a $n -lt 1000 ]
       then
           array[ ((count++)) ]=$n
           ((num--))
       fi
    done
}

generateNumber $num

echo " ${array[*]} "
length=${#array[*]}

for (( i=0;i<$length;i++ ))
do
    for(( j=$i;j<$length;j++ ))
    do
          if [ ${array[$i]} -gt ${array[$j]} ];
          then
                 t=${array[$i]}
                 array[$i]=${array[$j]}
                 array[$j]=$t
          fi
    done
done

echo "second min in random array: ${array[1]}"
echo "second max in random array: ${array[$length-2]}"
