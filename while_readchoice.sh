#!/bin/bash

while true
do
	read -p "1: Show disk usage. 2: Show uptime." CHOICE
	case "${CHOICE}" in 
	1)
		sudo df -h
		;;
	2)
		sudo uptime
		;;
	*)
		break
		;;
	esac
done
