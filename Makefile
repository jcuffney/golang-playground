# Go (lang) Makefile
# - used for development
# - used in CI
# @author: Joe Cuffney <josephcuffney@gmail.com>

dev:
	serverless invoke local --function hello-world

lint:
	echo "lint"
# 	go build -o bin/main main.go

test:
	echo "test"	

build:
	rm -rf bin
	mkdir bin
	go build -o bin ./*.go

run:
	go run main.go

cover:
	echo "cover"
# 	go test -coverprofile=coverage.out
# 	go tool cover -html=coverage.out

fmt:
	go fmt ./...

verify: lint cover build