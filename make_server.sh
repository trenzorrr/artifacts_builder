#!/bin/sh

## skip server build for osx
if "$TRAVIS_OS_NAME" = linux; then
    docker exec -it buildct /build/xmrigCCServer-dynamic-build.sh || exit 1
fi
