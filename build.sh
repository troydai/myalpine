#!/bin/bash

curl -sLO \
	https://dl-cdn.alpinelinux.org/alpine/v3.17/releases/x86_64/alpine-minirootfs-3.17.2-x86_64.tar.gz

docker build -t myalpine .
