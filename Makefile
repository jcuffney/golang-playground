init:
	go mod download

init\:hard:
	rm go.sum || true
	go mod download

dev:
	serverless invoke local --function health

lint:
	echo "lint"

test:
	echo "test"	

build:
	rm -rf bin
	mkdir bin
	go build -o bin ./*.go

run:
	go run health.go

cover:
	echo "cover"

fmt:
	go fmt ./...

verify: lint cover build