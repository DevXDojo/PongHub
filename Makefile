PROJECT_NAME=ponghub

BINARY=bin/$(PROJECT_NAME)
SRC=./cmd/$(PROJECT_NAME)

.PHONY: all build run test clean

all: build

build:
	go build -o $(BINARY) $(SRC)

run: build
	$(BINARY)

test:
	go test ./...

clean:
	del $(BINARY)
