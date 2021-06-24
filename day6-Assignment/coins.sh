#!/bin/bash -x

Headcount=0
Tailcount=0
while [ $Headcount -lt 12 -a $Tailcount -lt 12 ]
do
  coin=$(( RANDOM %2 ))
  if [ $coin -eq 1 ]
  then
  Headcount=$(( Headcount + 1 ))
  if [ $Headcount -eq 11 ]
   then
     echo "head $Headcount"
   fi
  else
  Tailcount=$(( Tailcount + 1 ))
   if [ $Tailcount -eq 11 ]; then echo "tail $Tailcount" ; fi
  fi

done
