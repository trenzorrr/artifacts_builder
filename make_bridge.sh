## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct_ubu /build/build_mm.sh || exit 1
        cd xnp
        zip mm.zip mm -y
        cd -
        ;;
esac
