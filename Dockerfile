FROM golang:latest

RUN go get github.com/kisielk/errcheck
RUN go get github.com/golang/lint/golint
COPY go-all-checks.sh $GOPATH/bin/
ENV GOPATH=$GOPATH:/app
