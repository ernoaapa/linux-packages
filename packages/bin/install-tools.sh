#!/bin/sh

set -eu

go get -u github.com/goreleaser/nfpm
cd $GOPATH/src/github.com/goreleaser/nfpm
go get ./...
GOBIN=$GOPATH/bin go install ./cmd/nfpm/
cd -
nfpm --version

go get -u github.com/mlafeldt/pkgcloud/...

sudo apt-get update && sudo apt-get install -y btrfs-tools libseccomp-dev