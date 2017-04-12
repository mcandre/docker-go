.PHONY: mcandre/docker-go-gnu mcandre/docker-go-musl

all: mcandre/docker-go-gnu mcandre/docker-go-musl

mcandre/docker-go-gnu: gnu/Dockerfile
	sh -c "cd gnu && docker build -t mcandre/docker-go:gnu ."

mcandre/docker-go-musl: musl/Dockerfile
	sh -c "cd musl && docker build -t mcandre/docker-go:musl ."

publish-mcandre/docker-go-gnu: mcandre/docker-go-gnu
	docker push mcandre/docker-go:gnu

publish-mcandre/docker-go-musl: mcandre/docker-go-musl
	docker push mcandre/docker-go:musl

publish: publish-mcandre/docker-go-gnu publish-mcandre/docker-go-musl
