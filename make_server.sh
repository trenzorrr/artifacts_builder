#!/bin/sh

docker exec -it buildct /build/xmrigCCServer-dynamic-build.sh || exit 1
