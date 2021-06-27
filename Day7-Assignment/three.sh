#! /bin/bash -x
declare -a array
echo "enter the number of elements :"
read n

fillarray() {

for((i=0;i<n;i++))
do
     read -p "enter the values: " value
     array[$i]=$value
done
}
display()
{
   for((i=0;i<n;i++))
   do
      echo -e "${array[$i]} \c "
   done
}

threenumzero()
{
    for(( i=0;i<n-2;i++ ))
    do
         for(( j=i+1;j<n-1;j++ ))
         do
            for(( k=j+1;k<n;k++ ))
            do
                 z=$(( ${array[$i]} + ${array[$j]} + ${array[$k]} ))
                 if [ $z -eq 0 ]
                  then
                       echo " triplet value is ${array[$i]},${array[$j]},${array[$k]} "
                 fi
            done
         done
    done
}
fillarray
display
echo
threenumzero

