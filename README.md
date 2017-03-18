# Go-code checks Docker image

[![Docker Pulls](https://img.shields.io/docker/pulls/msoap/golang-checks.svg?maxAge=3600)](https://hub.docker.com/r/msoap/golang-checks/)
[![Docker Stars](https://img.shields.io/docker/stars/msoap/golang-checks.svg?maxAge=3600)](https://hub.docker.com/r/msoap/golang-checks/)
[![](https://images.microbadger.com/badges/image/msoap/golang-checks.svg)](https://microbadger.com/images/msoap/golang-checks)

GOPATH in container set to `/go:/app`

Get:

    docker pull msoap/golang-checks

Run all checks (without gometalinter):

    docker run -i --rm -v "$PWD":/app msoap/golang-checks go-checks.sh .
    
    # alpine version:
    docker run -i --rm -v "$PWD":/app msoap/golang-checks:alpine go-checks.sh .
    
    # if your code use vendor and must been in GOPATH, run from local GOPATH:
    docker run -i --rm -v "$PWD":/app/src/project-name -w /app/src/project-name msoap/golang-checks go-checks.sh .

Run gometalinter:

    docker run -i --rm -v "$PWD":/app -w /app msoap/golang-checks gometalinter .

Run tests only:

    docker run -i --rm -v "$PWD":/app -w /app msoap/golang-checks go test -v -race -cover

Run custom checks from shell:

    docker run -it --rm -v "$PWD":/app -w /app msoap/golang-checks bash

Show test covearge:

    docker run -i --rm -v "$PWD":/app -w /app msoap/golang-checks go-carpet -256colors | less

Show tools list:

    docker run --rm msoap/golang-checks ls /go/bin

go-checks.sh run tools:

  * go test -v
  * go vet
  * golint
  * errcheck
  * `diff -u <(gofmt -d *.go) <(echo -n)`

Pre-installed tools:

  * [golint](https://github.com/golang/lint)
  * [errcheck](https://github.com/kisielk/errcheck)
  * [go-carpet](https://github.com/msoap/go-carpet)
  * [gometalinter](https://github.com/alecthomas/gometalinter), and all tools for it
