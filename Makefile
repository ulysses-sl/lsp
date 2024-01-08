.PHONY: all test clean

all: build

build:
	mkdir -p ./bin
	go build ./cmd/lsp
	mv lsp ./bin/

run: 
	go run ./cmd/lsp/main.go

clean:
	rm ./bin/*

test:
	go test
