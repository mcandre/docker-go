# mcandre/docker-go: Docker images for Go build bots

# EXAMPLES

```console
$ docker pull mcandre/docker-go:glibc

$ docker run mcandre/docker-go:glibc sh -c "go get github.com/mcandre/go-ios7crypt/... && ios7crypt -decrypt 12140a19190e15"
monkey

$ docker run mcandre/docker-go:glibc sh -c "go get github.com/mcandre/go-ios7crypt/... && apt-get update && apt-get install -y file && which ios7crypt | xargs file"
/go/bin/ios7crypt: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, not stripped
```

# COMPILATION WARNING

Go distributions differ on default configurations. For example, `go build` links dynamically to musl in Alpine, whereas `go build` links statically to glibc in Ubuntu. To adjust the interpreter link style of the binaries you are building, supply either `--ldflags='-linkmode external'` or `--ldflags '-linkmode external -extldflags "-static”’` to `go build`, depending on whether you prefer to depend on the libc at runtime vs. hard copy the libc/kernel into the binary. Each style has tradeoffs, in terms of binary size, runtime requirements, and ease of applying security patches.

# DOCKERHUB

https://hub.docker.com/r/mcandre/docker-go/

# RUNTIME REQUIREMENTS

* [Docker](https://www.docker.com) 19+

# CONTRIBUTING

For more information on developing docker-go itself, see [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

[mcandre/factorio](https://github.com/mcandre/factorio)
