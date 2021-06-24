#!/bin/bash -x
  read -p " Enter Date:-" date
  read -p " Enter Month:-" month
 
  if [ $month -gt 2 -a $month -lt 7 ]; then
     if [ $month -eq 3 -a $date -lt 20  -o $month -eq 6 -a $date -gt 20 ]; then
           echo "FALSE"
     else
           echo "TRUE"
      fi
 else
            echo "FALSE"
 fi
