#!/bin/bash -x

echo -e "enter numbers"
read num

case $num in
      [0-9]) result="UNIT";
      ;;
      [0-9][1-9]) result="TENS";
      ;;
      [0-9][1-9][1-9]) result="THOUSANDS";
      ;;
      *) result="INVALID";
esac

echo $result;







