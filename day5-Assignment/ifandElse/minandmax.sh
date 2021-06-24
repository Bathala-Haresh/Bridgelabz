#!/bin/bash -x
getValue(){
value=$((RANDOM %1000))
if [ $value -ge 100 -a $value -le 999 ]
then
return $value
else
getValue
fi
}
getValue
val1=$value
getValue
val2=$value
getValue
val3=$value
echo $val1
echo $val2
echo $val3
max=0
if [ $val1 -gt $val2 -a $val1 -gt $val3 -a  $val1 -gt $val4 ]
then
         max=$val1
elif [ $val2 -gt $val1 -a $val2 -gt $val3 -a $val2 -gt $val4 ]
then
        max=$val2
elif [ $val3 -gt $val1 -a $val3 -gt $val2 -a $val3 -gt $val4 ]
then
        max=$val3
else
        max=$val4
