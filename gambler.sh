#! /bin/bash
echo "enter the stake"
read stake
echo "enter the goal"
read goal

echo "enter the trails"
read trails
bets=0
wins=0
for(( i=0;i<trails;i++ ))
do
 cash=$stake
 while(( $cash > 0 && $cash < $goal ))
 do
   (( beats++ ))
    if [ $(( $RANDOM % 2)) -eq 0 ]
      then
         (( cash++ ))
         (( wins++ ))
       else
          (( cash-- ))
           (( wins-- ))
     fi
   done
if(( $cash == $goal ))
then
   echo "you have won $win"
   break
fi
done
echo "wins of :$wins"
echo -e "wining percentage is:\c"
echo "scale=3; ($wins/$trails)*100 "|bc -l
echo -e "loss percentage is:\c"
echo "scale=2; (($trails+$wins)/$trails)*100"|bc -l

