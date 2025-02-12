#!/bin/sh
mkdir build -p

echo "build linux amd64..."
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o build/neko-status_linux_amd64
echo "build linux arm64..."
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -ldflags="-w -s" -o build/neko-status_linux_arm64