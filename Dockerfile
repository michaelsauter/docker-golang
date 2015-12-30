FROM       michaelsauter/alpine:3.3
MAINTAINER Michael Sauter <mail@michaelsauter.net>

RUN sudo apk-install go=1.5.2-r0

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

VOLUME  $GOPATH
WORKDIR $GOPATH