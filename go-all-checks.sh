#!/bin/sh

echo ">>> go test -v"
go test -v "$@"

echo ">>> go vet"
go vet "$@"

echo ">>> golint"
golint "$@"

echo ">>> errcheck"
errcheck "$@"
