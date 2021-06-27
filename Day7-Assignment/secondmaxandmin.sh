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
length=${#array[*]}
secmax=${array[0]}
secmin=${array[0]}
max=${array[0]}
min=${array[0]}

for((i=0;i<$length;i++))
do
       if((${array[$i]} > $max ))
       then
             secmax=$max
             max=${array[$i]}
       elif(( ${array[$i]} > $secmax ))
       then
             secmax=${array[$i]}
       fi
done

for((i=0;i<$length;i++))
do
       if((${array[$i]} < $min ))
       then
             secmin=$min
             min=${array[$i]}
       elif(( ${array[$i]} < $secmin ))
       then
             secmin=${array[$i]}
       fi
done

echo "${array[*]}"
echo "second max in random array: $secmax"
echo "second min in random array: $secmin"

