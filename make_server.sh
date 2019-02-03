#!/bin/sh

## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct_alp /build/mccsrv-build.sh || exit 1
        ;;
esac
