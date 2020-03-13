#! /bin/bash
echo "enter the point a"
read a
echo "enter the point a"
read b
distance=$(echo  "scale=2;sqrt($a^2 + $b^2) "|bc -l)
echo "$distance"
