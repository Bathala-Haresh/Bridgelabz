#!/bin/bash -x
echo -e "enter your number"
read num
if [ $num -ge 0  -a $num -le 9 ]
then
         result="unit";
elif [ $num -ge 10 -a $num -le 99 ]
then
         result="tens";
elif [ $num -ge 100 -a $num -le 999 ]
then
         result="hundreds";
elif [ $num -ge 1000 -a $num -le 9999 ]
then
        result="thousands";
elif [ $num -ge 100000 -a $num -le 999999 ]
then
        result="lakh";
else
       result ="invalid";
fi
echo $result;

