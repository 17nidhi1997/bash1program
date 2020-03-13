#! /bin/bash
HEAD=0
TAIL=0
echo "enter the no of flips"
read flip
for((i=1;i<=flip;i++))
do

FLIP=$(($(($RANDOM%flip))%2))

if [ $FLIP -eq 1 ]
then

TAIL=$(( $TAIL+1 ))
else

HEAD=$(( $HEAD+1 ))
fi
done
echo "$HEAD"
echo "$TAIL"
heads=$((100*$HEAD/$flip|bc))
echo "this is for head $heads"
tails=$((100*$TAIL/$flip|bc))

echo "this is for tail $tails"

