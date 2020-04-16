#!/bin/bash -x
echo "Snake And Ladder Simulatior..."

startPosition=0
position=0

NO_PLAY=0
LADDER=1
SANKE=2
PLAYER1=0

die=$((1+RANDOM%6))
function checkCase()
{
read -p "Enter The Choice :=" choice
dice=$((1+RANDOM%6))
case $choice in
	1)	echo "No Play"
		position=$position
		;;

	2)	echo "Case Of Ladder"
		startPosition=$(($startPosition+$dice))
		;;

	3)	echo "Case Of Snake"
		startPosition=$(($startPosition-$dice))
		;;
esac
}
checkCase
echo $startPosition
