FROM       michaelsauter/alpine:3.2
MAINTAINER Michael Sauter <mail@michaelsauter.net>

ARG go_version=1.4.2-r1

RUN sudo apk-install go=$go_version

RUN sudo mkdir -p /go/src /go/bin; \
    sudo chown -R default: /go

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

WORKDIR $GOPATH