#!/bin/sh

# download alpine root fs package and verify it

GEN=v3.17
VERSION=3.17.2

SCRIPT_DIR=`dirname $0`

for ARCH in aarch64 x86_64; do
    curl -sLO https://dl-cdn.alpinelinux.org/alpine/$GEN/releases/$ARCH/alpine-minirootfs-$VERSION-$ARCH.tar.gz
    sha256sum -c $SCRIPT_DIR/checksum.$ARCH
    mkdir -p alpine-fx-$ARCH
    tar -xvzf alpine-minirootfs-$VERSION-$ARCH.tar.gz -C alpine-fx-$ARCH
done
