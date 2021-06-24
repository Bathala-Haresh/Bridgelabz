echo -n "Enter a day"
read num

if [ $num -le 7 -a $num -gt 0 ]
then
if [ $num -eq   1 ];   then echo "SUNDAY" ;
elif [ $num -eq 2 ]; then  echo "MONDAY" ;
elif [ $num -eq 3 ]; then  echo "TUESDAY" ;
elif [ $num -eq 4 ]; then  echo "WEDNESDAY" ;
elif [ $num -eq 5 ]; then echo "THURSDAY" ;
elif [ $num -eq 6 ]; then echo "FRIDAY" ;
elif [ $num -eq 7 ]; then echo "SATURDAY" ;
fi
else echo "Should be between 1 to 7";
fi
