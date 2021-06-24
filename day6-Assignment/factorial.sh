echo "enter a number"
read num
fact=1
for((i=1;i<=num;i++))
{
   fact=$((fact * i));
}
echo $fact
