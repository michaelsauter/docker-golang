TAG ?= 1.6

build: Dockerfile
	docker build -t michaelsauter/golang:$(TAG) .
	docker tag -f michaelsauter/golang:$(TAG) michaelsauter/golang:latest
