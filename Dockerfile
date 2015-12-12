FROM       michaelsauter/alpine:3.2
MAINTAINER Michael Sauter <mail@michaelsauter.net>

ARG go_version

RUN sudo apk-install go=$go_version


ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

VOLUME  $GOPATH
WORKDIR $GOPATH