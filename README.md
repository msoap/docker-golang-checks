# Go-code checks Docker image

GOPATH in container set to `/go:/app`

Get:

    docker pull msoap/golang-checks

Run checks for Go-code:

    docker run -i --rm -v "$PWD":/app -w /app/src/name msoap/golang-checks go-checks.sh .

Run custom checks from shell:

    docker run -it --rm -v "$PWD":/app -w /app/src/name msoap/golang-checks bash

Show test covearge:

    docker run -i --rm -v "$PWD":/app -w /app/src/name msoap/golang-checks go-carpet -256colors | less

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

Links:

  * [Dockerfile](https://github.com/msoap/docker-golang-checks/blob/master/Dockerfile)
  * [https://hub.docker.com/r/msoap/golang-checks/](https://hub.docker.com/r/msoap/golang-checks/)
