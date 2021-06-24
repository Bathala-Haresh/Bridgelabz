#! /bin/bash
echo "Enter the number to find power : "
read num
base=2
i=1
while [ $i -le $num ]
do
   if [ $i -le 8 ]
   then
   result=$(($base ** $i))
   echo "2 power of $i is $result"
   i=`expr $i + 1`
   else
   echo "exceded range of 256"
       break
   fi
done
