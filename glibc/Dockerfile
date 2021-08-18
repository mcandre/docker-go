FROM library/ubuntu:20.04
ARG GO_VERSION=1.17
ENV GOPATH /go
ENV PATH ${PATH}:/usr/local/go/bin:${GOPATH}/bin
RUN apt-get update && \
    apt-get install -y \
        gcc-multilib \
        git \
        wget && \
    wget "https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz" && \
    tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz" && \
    rm "go${GO_VERSION}.linux-amd64.tar.gz" && \
    apt-get remove --purge -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
