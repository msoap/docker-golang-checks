#!/bin/bash

echo ">>> go test -v"
go test -v "$@"

echo ">>> go vet"
go vet "$@"

echo ">>> golint"
golint "$@"

echo ">>> errcheck"
errcheck "$@"

echo ">>> gofmt"
diff -u <(gofmt -d *.go) <(echo -n)
