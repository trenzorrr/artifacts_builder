#!/bin/sh

case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct /build/mcc-build.sh || exit 1
        ;;
    osx)
        cd utils/buildscripts
        bash -x ./mcc-build.sh mac
        ;;
esac
