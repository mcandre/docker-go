# mcandre/docker-go: Docker images for Go build bots

# EXAMPLE

```console
$ docker pull mcandre/docker-go:musl

$ docker run mcandre/docker-go:musl sh -c "go get github.com/mcandre/go-ios7crypt/... && ios7crypt -d 12140a19190e15"
monkey
```

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-go/

# REQUIREMENTS

* [Docker](https://www.docker.com)

# BUILD DOCKER IMAGES

```console
$ make

$ docker images | grep mcandre/docker-go
mcandre/docker-go                gnu                 14f8d4a0e765        6 minutes ago       521 MB
mcandre/docker-go                musl                0d1f77fd8654        19 hours ago        295 MB
```

# PUBLISH IMAGES

```console
$ make publish
```

# SEE ALSO

[mcandre/docker-gox](https://github.com/mcandre/docker-gox)
