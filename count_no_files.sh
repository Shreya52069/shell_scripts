#!/bin/bash

filecount(){

	local COUNT=0
	CURR_DIR=$(pwd)
	FILES=$(ls $CURR_DIR | wc -l)
	echo "Number of files in ${CURR_DIR} is ${FILES}"
	read -p "Enter the directory name: " DIR
	DIRFILES=$(ls $DIR | wc -l)
	echo "Number of files in ${DIR} is ${DIRFILES}"
	if [ -d $1 ]
	then
		DIRFILES1=$(ls $1 | wc -l)
	        echo "Number of files in $1 is ${DIRFILES1}"
	fi
}
filecount /etc
filecount /var
filecount /usr/bin
