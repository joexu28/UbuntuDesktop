#!/bin/bash

case "$1" in 
	start|START)
		#/usr/sbin/sshd
		sudo systemctl start sshd	
		;;
	stop|STOP)
		#kill $(cat /var/run/sshd.pid)
		sudo systemctl stop sshd		
		;;
	*)
		echo "Usage: $0 start|stop" ; exit 1
esac
