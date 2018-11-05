#!/bin/sh

set -eu

BASEDIR=$(dirname "$0")

rm -rf ./dist
${BASEDIR}/build-containerd.sh
${BASEDIR}/build-runc.sh