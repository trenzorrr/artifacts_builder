#!/bin/sh

case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct /build/xmrigCCMin-static-build.sh || exit 1
        ;;
    osx)
        cd utils/buildscripts
        bash -x ./xmrigCCMin-static-build.sh mac
        ;;
esac
