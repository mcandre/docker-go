FROM debian:jessie-backports
ENV GOPATH /go
ENV PATH $PATH:/usr/lib/go-1.7/bin:$GOPATH/bin
RUN apt-get update && \
    apt-get install -y golang-1.7 git gcc
