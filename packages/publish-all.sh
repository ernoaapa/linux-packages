#!/bin/sh

set -eu

BASEDIR=$(dirname "$0")
if [ -z ${PACKAGECLOUD_TOKEN+x} ]; then
  echo "You must define PACKAGECLOUD_TOKEN environment variable to publish packages"
  exit 1
fi

${BASEDIR}/build-all.sh

for package in dist/*.deb; do
  pkgcloud-push ernoaapa/common/raspbian/stretch $package || echo "${package} upload failed. Already uploaded?"
done