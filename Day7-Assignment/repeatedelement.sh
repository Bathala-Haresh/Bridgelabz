#! /bin/bash -x

read -p "enter the array size : "  size
count=0

echo "Read the array elements :"
for(( i=0;i<$size;i++ ))
do
   echo -e "enter your value : $i"
   read value
   array[$i]=$value
done

function repeatedElement()
{
     num=$1
     sum=0
     temp=$num
     while (($num!=0))
     do
          rem=$((num%10))
          sum=$((((sum *10)) + rem))
          num=$((num/10))
     done
     
     if [ $sum -eq $temp ]; then
          repeatArray[ ((count++)) ]=$sum
     fi
      echo "$repeatArray"
}

for((i=0;i<${#array[*]};i++))
do
      repeatedElement ${array[$i]}
done

echo "Array elements:${array[*]}"

echo "repeated array elements:${repeatArray[*]}"
