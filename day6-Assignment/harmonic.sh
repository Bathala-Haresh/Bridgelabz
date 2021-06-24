#! /bin/bash -x
echo "Enter a number to print Harmonic series : "
read num
sum=0
a=1
for(( i=1;i<=num;i++ ))
do
    result=$(echo $i $a | awk '{ print $2/$1 }')
    sum=$(echo $result $sum | awk '{print $1+$2}')
done


echo $sum

