TAG ?= 1.11.4

build: Dockerfile
	docker build -t michaelsauter/golang:$(TAG) .
	docker tag michaelsauter/golang:$(TAG) michaelsauter/golang:latest
