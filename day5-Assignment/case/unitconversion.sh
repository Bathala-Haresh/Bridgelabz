1.)FeetToInch
2.)FeetToMeter
3.)InchToFeet
4.)MeterToFeet

#!/bin/bash -x
read -p "Enter a number:" value
read -p "Enter the unit":" unit

case $unit in
         1) result=$((value*12));
         ;;
         2) result=$(awk -v x=$value -v y=3.2808 'BEGIN {print(x/y)}');
         ;;
         3)result=$((value/12));
         ;;
         4)result=$(awk -v x=$value -v y=3.2808 'BEGIN {print(x*y)}');
         ;;
         *)result="INVALID"
         ;;
esac
echo $result;


