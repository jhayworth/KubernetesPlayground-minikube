#!/bin/bash

export BASEDIR=$(pwd)

if [ "$1" == "init" ]; then
    # Initialize our environment
    terraform init

elif [ "$1" == "run-local-debug" ]; then
    # Run our service locally in an out-of-container context

    cd $BASEDIR/service
    . .venv/bin/activate
    python3 hello-world.py

elif [ "$1" == "contain" ]; then

    if [ "$2" == "minikube" ]; then
	eval $(minikube docker-env)
    fi
    
    cd $BASEDIR/service
    docker build . -t service-helloworld

elif [ "$1" == "run-container" ]; then

    docker run --name hello-world \
	       --detach \
	       --publish 127.0.0.1:5001:5000 \
	       service-helloworld

elif [ "$1" == "minikube-deploy" ]; then

    minikube kubectl -- create deployment helloworld-minikube --image=service-helloworld
    minikube kubectl -- expose deployment helloworld-minikube --type=NodePort --port 5002

fi

