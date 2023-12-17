#!/bin/bash
export GO_LATEST_VERSION=$(curl -s https://go.dev/dl/\?mode\=json | jq -r '.[0].version')
echo "Golang latest stable version : ${GO_LATEST_VERSION}"
export ARCH=$(dpkg --print-architecture)
export GOLANG_RELEASE_URL="https://go.dev/dl/${GO_LATEST_VERSION}.linux-${ARCH}.tar.gz"
echo "Golang RELEASE URL is : ${GOLANG_RELEASE_URL}"

wget ${GOLANG_RELEASE_URL}  -O go.tar.gz

echo "Delete old version of go + install new under /usr/local"
rm -rf /usr/local/go && tar -C /usr/local -xzf go.tar.gz