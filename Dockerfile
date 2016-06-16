FROM golang:latest

MAINTAINER Sergey Mudrik

RUN go get github.com/alecthomas/gometalinter
RUN gometalinter --install
RUN go get github.com/msoap/go-carpet

COPY go-checks.sh $GOPATH/bin/

ENV GOPATH=$GOPATH:/app

WORKDIR /app
