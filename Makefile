TAG ?= 1.5.2

build: Dockerfile
	docker build -t michaelsauter/golang:$(TAG) .
	docker tag -f michaelsauter/golang:$(TAG) michaelsauter/golang:latest
