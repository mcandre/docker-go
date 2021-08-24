.PHONY: mcandre/docker-go-glibc

all: mcandre/docker-go-glibc

mcandre/docker-go-glibc: glibc/Dockerfile
	docker build -t mcandre/docker-go:glibc glibc

publish-mcandre/docker-go-glibc: mcandre/docker-go-glibc
	docker push mcandre/docker-go:glibc

publish: publish-mcandre/docker-go-glibc
