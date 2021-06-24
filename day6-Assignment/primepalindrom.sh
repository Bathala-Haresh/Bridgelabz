#!/bin/bash -x

echo "enter one number : "
read number

isPalindrome()
{
reversedN=0
originalv=$1
n=$1

while [ $n -ne 0 ]
 do
 remainder=$(($n % 10))
 reversedN=$(($reversedN*10+$remainder))
 n=$(( n / 10 ))
 done

 if [ $originalv -eq $reversedN ]
   then
    status=1
    value="$originalv palindrome"
    else
    status=0
    value="$originalv not palindorme"
 fi

}

isPrime()
{
num=$1

for(( i=2; i<$num/2;i++ ))
do
   if [ $(($num % i)) -eq 0 ]
   then
     result="$num is not a prime number "
     echo "$result"
     exit
     else
     result="$num is a prime number"
   fi
done
 isPalindrome $num
if [ $status -eq 1 ]
then
  echo "$num is also palindrome and prime number"
fi
}


isPalindrome $number
echo $value

isPrime $number
echo $result


