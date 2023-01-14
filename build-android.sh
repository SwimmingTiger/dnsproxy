#!/bin/bash

# build executable for Android
build() {
    mkdir -p "build/$3"
    GOOS="$1" GOARCH="$2" go build -o "build/$3/libdnsproxy.so"
}

build android 386   x86
build android amd64 x86_64
build android arm64 arm64-v8a

export CC=arm-linux-gnueabihf-gcc
build android arm   armeabi-v7a
