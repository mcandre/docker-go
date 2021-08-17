FROM library/ubuntu:20.04
ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
RUN apt-get update && \
    apt-get install -y wget git gcc-multilib && \
    wget https://storage.googleapis.com/golang/go1.13.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz && \
    rm go1.13.linux-amd64.tar.gz && \
    apt-get remove --purge -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
