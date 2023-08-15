#!/bin/bash
echo $RANDOM
logger -p user.info "$RANDOM"

function logfunc(){
    RAN_NUM=$RANDOM
    logger -s -p user.info -t ${RAN_NUM}randomly -i "Message ${RAN_NUM}"
    #echo "$(logger -p user.info -t ${RANDOM}randomly -i "Message ${RANDOM})"

}

logfunc
logfunc
logfunc
