#!/bin/sh

set -eu

go get -u github.com/linuxkit/linuxkit/src/cmd/linuxkit
linuxkit version

go get -u github.com/estesp/manifest-tool
manifest-tool --version
