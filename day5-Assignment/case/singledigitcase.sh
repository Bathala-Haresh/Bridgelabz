#!/bin/bash -x

echo -e "Enter a number"

read number

case $number in
   "1") echo "ONE"
   ;;
   "2") echo "TWO"
   ;;
   "3") echo "THREE"
   ;;
   "4") echo "Four"
   ;;
   "5") echo "FIVE"
   ;;
   "6") echo "SIX"
   ;;
   "7") echo "SEVEN"
   ;;
   "8") echo "EIGHT"
   ;;
   "9") echo "NINE"
   ;;
   *) echo "UNDEFINED"
   ;;
Esac
