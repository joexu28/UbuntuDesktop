#! /bin/bash

HOST="google.com"
ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
	echo "$HOST is reachable"
else
	echo "$HOST unreachable"
fi
