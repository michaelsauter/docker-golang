FROM       michaelsauter/alpine:3.4
MAINTAINER Michael Sauter <mail@michaelsauter.net>

RUN sudo apk-install make go=1.7.1-r1 go-tools=1.7.1-r1

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

VOLUME  $GOPATH
WORKDIR $GOPATH