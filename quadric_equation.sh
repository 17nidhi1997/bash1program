#! /bin/bash
echo "enter the value for a, b ,c"
read a 
read b
read c
delta=$(echo " $b^2 - 4 * $a * $c " | bc)
echo "determetion is: $delta"
if (( $delta > 0 ))
then
root1=$(echo " scale=3;( - $b + sqrt($delta)) / (2 * $a)" | bc -l )
root2=$(echo " scale=3;( - $b - sqrt($delta)) / (2 * $a)" | bc -l )
echo "root1 are: $root1"
echo "root2 are: $root2"

else
echo "imagenry"
fi

