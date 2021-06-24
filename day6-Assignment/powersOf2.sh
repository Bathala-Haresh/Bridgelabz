#! /bin/bash
echo "Enter the number to find power : "
read num
base=2
for(( i=1;i<=num;i++ ))
do
   result=$(($base ** $i))
   echo "power of $i is $result"
done
