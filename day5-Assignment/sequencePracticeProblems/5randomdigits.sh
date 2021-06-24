#!/bin/bash -x
getValue(){
value=$((RANDOM %1000))
if [ $value -ge 10 -a $value -le 99 ]
then
return $value
else
getValue
fi
}
getValue
var1=$value
getValue
var2=$value
getValue
var3=$value
getValue
var4=$value
getvalue
var5=$value
echo $var1
echo $var2
echo $var3
echo $var4
echo $var5
sum=$(($var1+$var2+$var3+$var4))
avg=$(($sum/5))
echo "average is $avg"
