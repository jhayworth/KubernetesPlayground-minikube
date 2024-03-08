## Python Hello World Application

### build.sh init
  (This has been implemented)

  Initialize Terraform

### build.sh run-local-debug
  (This has been implemented)

  Test the Flask web API program

  URL: http://127.0.0.1:5000

### build.sh contain
  (This has been implemented)

  Contain the Flask API service

  --minikube
  This flag will build the container using the minikube docker daemon

### build.sh run-container
  (This has been implemented)

  Test the service locally from within the container.

  URL: http://127.0.0.1:5001

### build.sh standup-repository
  (This has NOT been implemented)

  Run terraform to create the Docker container repository

### build.sh publish-container
  (This has NOT been implemented)
  
  Publish the docker container to Docker container repository

build.sh minikube-deploy
  (This has been implemented)

  Deploy service container to local instance of minikube

  URL: http://127.0.0.1:5002



