# BUILDTIME REQUIREMENTS

* [Docker](https://www.docker.com) 19+
* [GNU make](https://www.gnu.org/software/make/) 4+

# BUILD DOCKER IMAGES

```console
$ make

$ docker images | grep mcandre/docker-go
1:mcandre/docker-go                      musl                4c81ed5c7aa5        5 minutes ago        295 MB
2:mcandre/docker-go                      glibc               332c92383f7c        27 hours ago         496 MB
```

# PUBLISH IMAGES

```console
$ make publish
```
