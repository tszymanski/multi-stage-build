# Example of multi-stage build

Multi-stage builds are a new feature requiring Docker 17.05 or higher on the daemon and client. Multistage builds are useful to anyone who has struggled to optimize Dockerfiles while keeping them easy to read and maintain.

Official documentation: https://docs.docker.com/develop/develop-images/multistage-build/

## How to run: 

### one-stage build 
To run without multi-stage feature just do: 

```bash 

docker build -t one-stage:latest -f Dockerfile .
```

Check images size: 

```bash 
docker images | grep one-stage
```
Run container from new image

```bash
$ docker run --rm=true --name onestage-test --hostname onestage-test one-stage:latest
```

### multi-stage build

To use multi-stage feature just do:

```bash 
docker build -t multi-stage:latest -f Dockerfile_multistage .
```

Run container from new image:

```bash
$ docker run --rm=true --name multistage-test --hostname multistage-test multi-stage:latest
```

Compare both new images:

```bash
docker images | grep stage
```

#### multi-stage build based on scratch image

The Application will be compiled with all libs, so it can be run as standalone

```bash 
$ docker build -t multistage-scratch:latest -f Dockerfile_multistage_scratch .
```
Run container from new image:

```bash
$ docker run --rm=true --name multistage-scratch-test --hostname multistage-scratch multistage-scratch:latest
```

Compare all new images: 

```bash
docker images | grep stage
```

