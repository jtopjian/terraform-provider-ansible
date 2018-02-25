#!/usr/bin/env bash

set -e -x

mkdir -p /go/src/github.com/nbering

ln -s  "$(pwd)/terraform-provider-ansible" "/go/src/github.com/nbering/terraform-provider-ansible"

pushd /go/src/github.com/nbering/terraform-provider-ansible
    ./scripts/build-release.sh
popd