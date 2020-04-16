#!/bin/bash -x
echo "Snake And Ladder Simulatior..."

startPosition=0
position=0

NO_PLAY=0
LADDER=1
SANKE=2
PLAYER1=0

dice=$((1+RANDOM%6))

read -p "Enter The Choice :=" choice
case $choice in
	$NO_PLAY)
		startPosition=$startPosition
		;;

	$LADDER)
		startPosition=$(($startPosition+$dice))
		;;

	$SNAKE)
		startPosition=$(($startPosition-$dice))
		;;
esac
echo $startPosition
