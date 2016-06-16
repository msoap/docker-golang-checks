FROM golang:latest

MAINTAINER Sergey Mudrik

RUN go get github.com/kisielk/errcheck
RUN go get github.com/golang/lint/golint
RUN go get github.com/msoap/go-carpet

COPY go-checks.sh $GOPATH/bin/

ENV GOPATH=$GOPATH:/app

WORKDIR /app
