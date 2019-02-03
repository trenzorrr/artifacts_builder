## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        if [ "${TRAVIS_TAG/bridge}" != "$TRAVIS_TAG" ]; then
            docker exec -it buildct_ubu bash /build/build_mm.sh || exit 1
            zip mm.zip mm
        fi
        ;;
esac
