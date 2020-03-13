#! /bin/bash
echo " enter the number "
read  n
i=2
while [ $n -ne 1 ]
do
if(( $n % $i == 0 ))
then
while [ $(( n % i )) -eq 0 ]
do
echo "$i"
n=$(( $n / $i ))
done
fi
i=$(( i+1 ))
done
