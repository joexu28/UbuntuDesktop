#!/bin/bash

read -p "Enter y or n: " ANSWER

case "$ANSWER" in 
	[yY] | [yY][eE][sS])
		echo "You answered yes."
		;;
	[nN] | [nY][oO])
		echo "You answered no."
		;;
	*)
		echo "Invalid answer."
		;;
esac 
