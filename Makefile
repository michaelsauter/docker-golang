TAG ?= 1.4.2-r1

build: Dockerfile
	docker build --build-arg go_version=$(TAG) -t michaelsauter/golang:$(TAG) .
	docker tag -f michaelsauter/golang:$(TAG) michaelsauter/golang:latest
