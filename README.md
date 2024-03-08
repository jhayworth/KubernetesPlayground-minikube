## Python Hello World Application

### Initialize!

  ```./build.sh init```

  Initialize Terraform

### Run the Python service locally

  ```./build.sh run-local-debug```

  Test the Flask web API program

  URL: [http://localhost:5000](http://127.0.0.1:5000)

### Wrap the service in a docker container

  ```./build.sh contain```

  Contain the Flask API service

  --minikube
  This flag will build the container using the minikube docker daemon
  ```./build.sh contain minikube```

### Run the container

  ```./build.sh run-container```

  Test the service locally from within the container.

  URL: [http://localhsot:5001](http://127.0.0.1:5001)

## Minikube specific commands

### Deploy!

  ```./build.sh minikube-deploy```

  Deploy service container to local instance of minikube

  URL: [http://localhost:5002](http://127.0.0.1:5002)

## AWS specific commands

### Standing up the repository
  **(This has NOT been implemented)**

  ```./build.sh standup-repository```

  Run terraform to create the Docker container repository

### Publishing the container
  **(This has NOT been implemented)**

  ```./build.sh publish-container```

  Publish the docker container to Docker container repository


