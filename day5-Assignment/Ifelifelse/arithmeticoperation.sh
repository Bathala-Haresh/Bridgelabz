#!/bin/bash -x
  echo "Enter  1st number : "
  read a
  echo "Enter 2nd number : "
  read b
  echo "Enter 3 rd number : "
  read c
 
   val1="$(($a + ( $b * $c )))"
  val2="$((($a % $b) + $c))"
  val3="$(($c + ($a / $b)))"
  val4="$((($a * $b) + $c))"

 echo "val1 operation result is $val1"
 echo "val2 operation result is $val2"
 echo "val3 operation result is $val3"
 echo "val4 operation result is $val4"

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
 fi
 echo "Maximum is : $max";

 min=0

  if [ $val1 -lt $val2 -a $val1 -lt $val3 -a  $val1 -lt $val4 ]
  then
          min=$val1
  elif [ $val2 -lt $val1 -a $val2 -lt $val3 -a $val2 -lt $val4 ]
  then
          min=$val2
  elif [ $val3 -lt $val1 -a $val3 -lt $val2 -a $val3 -lt $val4 ]
  then
