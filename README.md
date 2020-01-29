# Environment Variable in AngularJS and Docker

## Introduction

[AngularJS](https://angularjs.org/) define environment variables into a file. This aproach allows during the compilation time an application to be deployed in several different environments (E.g.: dev, qa, production, etc.).

The disadivantage is since this is done compilation time, you cannot for example cleate a *docker image* with your solution ready for production, therefore without using your code and the [Angular Development Server](https://angular.io/cli/serve). In this way once you create an image you will be able to deploy it into several environment without having to recompile your code.

## How to Compile

```shell
docker-compose -f ./build/docker-compose-build-linux.yaml build
```

## How to Run

```shell
docker-compose -f ./build/docker-compose-run-linux.yaml up -d
```

Than you can connection in the followinf URLs:

[http://localhost:8000](http://localhost:8000)
[http://localhost:8001](http://localhost:8001)

You will notice that although we are using the same images in the `./build/docker-compose-run-linux.yaml` file, you will see 02 diferent values comming from the *Environment variables* configured in each service.

