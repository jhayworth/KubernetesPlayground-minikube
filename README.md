## Python Hello World Application

## Deployment

build.sh init

  Initialize Terraform

build.sh run-local-debug

  Test the Flask web API program

  URL: http://127.0.0.1:5000

build.sh contain

  Contain the Flask API service  

build.sh run-container

  Test the service locally from within the container.

  URL: http://127.0.0.1:5001

build.sh publish-container
build.sh deploy