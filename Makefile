# Go (lang) Makefile
# - used for development
# - used in CI
# @author: Joe Cuffney <josephcuffney@gmail.com>

dev:
	serverless invoke local --function hello-world

# lint:
# 	go build -o bin/main main.go

test:
	go build -o bin/main main.go

build:
	go build -o bin/main main.go

run:
	go run main.go

# coverage:
# 	go test -coverprofile=coverage.out
# 	go tool cover -html=coverage.out

# fmt:
# 	go fmt ./...

# verify: lint test build