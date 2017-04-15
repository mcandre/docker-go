.PHONY: mcandre/docker-go-glibc mcandre/docker-go-musl

all: mcandre/docker-go-glibc mcandre/docker-go-musl

mcandre/docker-go-glibc: glibc/Dockerfile
	sh -c "cd glibc && docker build -t mcandre/docker-go:glibc ."

mcandre/docker-go-musl: musl/Dockerfile
	sh -c "cd musl && docker build -t mcandre/docker-go:musl ."

publish-mcandre/docker-go-glibc: mcandre/docker-go-glibc
	docker push mcandre/docker-go:glibc

publish-mcandre/docker-go-musl: mcandre/docker-go-musl
	docker push mcandre/docker-go:musl

publish: publish-mcandre/docker-go-glibc publish-mcandre/docker-go-musl
