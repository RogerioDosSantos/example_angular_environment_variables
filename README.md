# Environment Variable in AngularJS and Docker

## Introduction

[AngularJS](https://angularjs.org/) define environment variables into a file. This aproach allows during the compilation time an application to be deployed in several different environments (E.g.: dev, qa, production, etc.).

The disadivantage is since this is done compilation time, you cannot for example cleate a *docker image* with your solution ready for production, therefore without using your code and the [Angular Development Server](https://angular.io/cli/serve). 

This example adopts a different aproach. Stead of using multiple files for each environment that is used during compilation time, we keep only one production file wich contains *placeholders* for the values of each *Environment Variable* we want to be applied when the *docker container* starts. Them, before starting the *Web Server (nginx)*, we use a shell script to replace the *placeholders* with the value of the desired *Environment Variable*. In this way once you create an *docker image*, you will be able to deploy it into several environments without having to recompile your code.

## How to Compile

From this folder execute:

```shell
docker-compose -f ./build/docker-compose-build-linux.yaml build
```

## How to Run

From this folder execute:

```shell
docker-compose -f ./build/docker-compose-run-linux.yaml up -d
```

Than you can connect in the following URLs:

[http://localhost:8000](http://localhost:8000)

[http://localhost:8001](http://localhost:8001)

You will notice that although we are using the same images in the `./build/docker-compose-run-linux.yaml` file, you will see 02 diferent values comming from the *Environment variables* configured on each service.


