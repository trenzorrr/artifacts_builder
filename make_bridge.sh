## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct_ubu /build/build_mm.sh || exit 1
        zip mm.zip mm -y
        ;;
esac
