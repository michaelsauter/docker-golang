FROM       michaelsauter/ubuntu:16.04
MAINTAINER Michael Sauter <mail@michaelsauter.net>

RUN sudo apt-get update -y && sudo apt-get install -y git

ENV GO_VERSION 1.11.4

RUN cd /tmp; \
    curl -LO https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz; \
    sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz; \
    rm -f *.tar.gz; \
    cd;

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN sudo mkdir -p $GOPATH && \
    sudo chown -R ubuntu:ubuntu $GOPATH && \
    go get golang.org/x/tools/cmd/goimports

WORKDIR $GOPATH
