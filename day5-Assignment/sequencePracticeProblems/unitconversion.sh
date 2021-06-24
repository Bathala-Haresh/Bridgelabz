#! /bin/bash -x

ft=12
value=42

result=$( echo $ft $value | awk '{ print $2/$1 }' )
echo "$result"


val1=$((((ft * 60)) * $((ft * 40))))
echo "$val1 is the result"

meter=0.3048

finalResult=$(echo $val1 $meter | awk '{ print $1*$2 }' )
echo "$finalResult meters"


area=25
acres=4047

output=$( echo $finalResult $acres | awk '{ print $1/$2 }' )

outputResult=$( echo $output 25 | awk '{ print $1*$2 }' )
echo "25 such plots are : $outputResult"

