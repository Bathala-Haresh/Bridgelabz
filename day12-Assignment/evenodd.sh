#! /bin/bash -x

read -a Array
echo "enter upto which value ou want to go :"
read n

function even()
{ 
   n=$1
   for(( i=1;i<=n;i++ ))
   do
     if [[ $i%2 -eq 0 ]]; then
      echo "even numbers "
     fi
   done
}

function odd()
{
   n=$1
   for(( i=1;i<=n;i++ ))
   do
     if [[ $i%2 -ne 0 ]]; then
      echo "odd numbers "
     fi
   done
}

function prime()
{
   n=$1
   for((i=2; i<=n/2; i++))
   do
     if [ $((n % i)) -eq 0 ]
       then
         echo "$n is not a prime number."
         exit
     fi
   done
   echo "$n is a prime number."
  
}

for((i=0;i<${#array[*]};i++))
do
      even ${array[$i]}
done

for((i=0;i<${#array[*]};i++))
do
      odd ${array[$i]}
done
for((i=0;i<${#array[*]};i++))
do
      prime ${array[$i]}
done



echo "even :${array[*]}"
echo "odd :${array[*]}"
echo "prime :${array[*]}"

