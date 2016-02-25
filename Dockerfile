FROM       michaelsauter/alpine:3.3
MAINTAINER Michael Sauter <mail@michaelsauter.net>

RUN sudo apk-install make go=1.6-r1

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

VOLUME  $GOPATH
WORKDIR $GOPATH