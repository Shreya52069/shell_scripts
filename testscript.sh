#!/bin/bash

hostname
if [ "$?" -eq "0" ]
then
	echo "Exiting with 0 exit status"
else
	echo "Exiting with 1"
fi
read -p "enter the file name: " FILE
if [ -f $FILE ]
then
	echo "Regular file"
	exit 0
elif [ -d $FILE ]
then
	echo "Directory"
	exit 1
else
	echo "Other type of file"
	exit 2
fi
