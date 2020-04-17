#!/bin/bash -x
echo "Snake And Ladder Simulatior..."

startPosition=0
position=0
play=0
declare -A array

NO_PLAY=0
LADDER=1
WINNING_POSITION=100

function checkCase()
{
while [[ $position -le $WINNING_POSITION || $position -lt $WINNING_POSITION ]]
do
	dieRoll=$((1+RANDOM%6))
	random=$((RANDOM%3))

		case $random in
			1) echo $position
			;;

			2)
			startPoition=$(($startPosition+$dieRoll))
			if [ $position -gt 100 ] 
          		then
               		position=$(( $position - $dieRoll ))
          		fi
			array[$play]=$position
			((play++))
			;;

			3)
			startPosition=$(($startPosition-$dieRoll))
			;;

esac
echo $startPosition
(( position++ ))
done
}
array[$play]=$position
checkCase

if [[ $position -lt 0 ]]
then
	checkCase
fi

player1=$(( checkCase ))
player2=$(( checkCase ))
if [ $player1 -gt $player2 ]
then
	echo "Player1 Win"
else
	echo "Player2 Win"
fi
