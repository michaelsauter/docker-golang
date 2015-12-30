FROM       michaelsauter/alpine:3.3
MAINTAINER Michael Sauter <mail@michaelsauter.net>

ARG go_version=1.5.2-r0

RUN sudo apk-install go=$go_version

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

VOLUME  $GOPATH
WORKDIR $GOPATH