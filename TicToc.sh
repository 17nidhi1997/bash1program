declare -A array
setBoard()
{
 for ((i=0 ;i<3 ; i++)) do
        for((j=0;j<3;j++))
        do
        array[$i,$j]=_
        done
done
}

displayMat(){
for((i=0;i<3;i++))
do
          for((j=0;j<3;j++))
          do
          echo -e "${array[$i,$j]} | \c"
          done

echo

done
}

playComputer(){
 echo "Computer turn"
n=3
sym="x"
r=$(( $RANDOM % n ));
c=$(( $RANDOM % n ));
echo $r
echo $c
echo ${array[$r,$c]}
if [[ "${array[$r,$c]}" == "_" ]]
then
    array[$r,$c]="$sym"
	echo ${array[$r,$c]}

else
echo "Invalid input"
playComputer
fi

}

playUser(){
if(($count>o))
then
 echo "User turn"
sym="o"
read r
read c
echo $r
echo $c
if [[ "${array[$r,$c]}" == "_" ]]
then
    array[$r,$c]="$sym"
        echo ${array[$r,$c]}

else
echo "Invalid input"
if ((count>0))
then
playUser
fi
fi
fi
}

checkForWin(){
row1="${array[0,0]}${array[0,1]}${array[0,2]}"
row2="${array[1,0]}${array[1,1]}${array[1,2]}"
row3="${array[2,0]}${array[2,1]}${array[2,2]}"
col1="${array[0,0]}${array[1,0]}${array[2,0]}"
col2="${array[0,1]}${array[1,1]}${array[2,1]}"
col3="${array[0,2]}${array[1,2]}${array[2,2]}"
dia1="${array[0,0]}${array[1,1]}${array[2,2]}"
dia2="${array[0,2]}${array[1,1]}${array[2,0]}"
com="xxx"
user="ooo"

if [[ $row1 == $com || $row2 == $com || $row3 == $com || $col1 == $com || $col2 == $com || $col3 == $com || $dia1 == $com || $dia2 == $com ]]
then 
echo "Congrats computer is win..."
sleep 10
bash tictoc.sh
elif [[ $row1 == $user || $row2 == $user || $row3 == $user || $col1 == $user ||$col2 == $user || $col3 == $user || $dia1 == $user || $dia2 == $user ]]
then
echo "Congrats user is win..."
sleep 10
bash tictoc.sh
fi

}

echo "game starts now"
setBoard
displayMat
echo "x for computer"
echo "o for Player"
count=$(( 3*3))
gameStart=$((RANDOM%2))
echo $gameStart
if [ $gameStart -eq 0 ]
then
echo "Congrats Computer win the toss"
while (($count>0))
do
playComputer
count=$(($count-1))
displayMat
checkForWin
playUser
count=$(($count-1))

displayMat
checkForWin
if (($count<0))
then
echo "Match TIE !!!!"
fi
done
else
echo "Congrats User win the toss"
while (($count>0))
do
playUser
count=$(($count-1))
displayMat
checkForWin
playComputer
count=$(($count-1))
displayMat
checkForWin
if (($count<0))
then
echo "Match TIE !!!!"
fi
done
fi

