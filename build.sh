#!/bin/bash

export BASEDIR=$(pwd)

if [ "$1" == "init" ]; then
    # Initialize our environment
    terraform init

elif [ "$1" == "run-debug" ]; then
    # Run our service locally in an out-of-container context
    
    cd $BASEDIR/service
    . .venv/bin/activate
    python3 hello-world.py
    
fi

