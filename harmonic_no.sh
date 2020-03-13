#! /bin/bash
echo "enter the number"
read n
num=0
x=0
for(( i=1;i<=$n;i++ ))
do
 num=$(echo "scale=3;$x + 1/$i"|bc )
 x=$num
done
echo "$num"
