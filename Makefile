TAG ?= 1.8.3

build: Dockerfile
	docker build -t michaelsauter/golang:$(TAG) .
	docker tag michaelsauter/golang:$(TAG) michaelsauter/golang:latest
