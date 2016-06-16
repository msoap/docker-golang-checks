# Go-code checks Docker image

[![Docker Pulls](https://img.shields.io/docker/pulls/msoap/golang-checks.svg?maxAge=2592000)](https://hub.docker.com/r/msoap/golang-checks/)
[![Docker Stars](https://img.shields.io/docker/stars/msoap/golang-checks.svg?maxAge=2592000)](https://hub.docker.com/r/msoap/golang-checks/)

GOPATH in container set to `/go:/app`

Get:

    docker pull msoap/golang-checks

Run all checks:

    docker run -i --rm -v "$PWD":/app -w /app/src/name msoap/golang-checks go-checks.sh .

Run tests only:

    docker run -i --rm -v "$PWD":/app -w /app msoap/golang-checks go test -v -race -cover

Run custom checks from shell:

    docker run -it --rm -v "$PWD":/app -w /app msoap/golang-checks bash

Show test covearge:

    docker run -i --rm -v "$PWD":/app -w /app msoap/golang-checks go-carpet -256colors | less

Run tools:

  * go test -v
  * go vet
  * golint
  * errcheck
  * `diff -u <(gofmt -d *.go) <(echo -n)`

Pre-installed tools:

  * golint
  * errcheck
  * go-carpet
