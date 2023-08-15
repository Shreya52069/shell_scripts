#!/bin/bash -ex
DEBUG=true
debud(){
    echo "Executing $@"
    $DEBUG && $1
    DEBUG=false
    $DEBUG && $2
    DEBUG=true
    $DEBUG && $3
}
debud ls ls ls

debug(){
	while $DEBUG
	do
		echo "executing $@"
		$@
		DEBUG=false
}
