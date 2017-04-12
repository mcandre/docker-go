# mcandre/docker-go: Docker images for Go build bots

# EXAMPLE

```console
$ docker pull mcandre/docker-go:musl

$ docker run mcandre/docker-go:musl sh -c "go get github.com/mcandre/go-ios7crypt/... && ios7crypt -d 12140a19190e15"
monkey
```

# REQUIREMENTS

* [Docker](https://www.docker.com)

# BUILD DOCKER IMAGES

```console
$ make

$ docker images | grep mcandre/docker-go
mcandre/docker-go                musl                0d1f77fd8654        36 minutes ago      295 MB
mcandre/docker-go                gnu                 5211c59dc389        42 minutes ago      537 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
