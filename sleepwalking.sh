#!/bin/bash
read -p "Would you like to start or stop the sleepwalking app?: " ANSWER
case "$ANSWER" in
    [sS]tart)
       	/tmp/sleepwalkingserver &
        ;;
    [sS]top)
        kill $(cat /tmp/sleep­walking­server.pid)
        ;;
    *)
        echo "Invalid input" 
	exit 1
        ;;
esac
