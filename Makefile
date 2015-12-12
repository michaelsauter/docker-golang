TAG ?= 1.5.2-r0

build: Dockerfile
	docker build --build-arg go_version=$(TAG) -t michaelsauter/golang:$(TAG) .
	docker tag -f michaelsauter/golang:$(TAG) michaelsauter/golang:latest
