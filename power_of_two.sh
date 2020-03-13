#! /bin/bash
echo "enter the number"
read number
for(( i=0;i<number;i++ ))
do 
echo " 2 ^ $i " | bc -l
done
