## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        docker exec -it buildct_ubu bash /build/build.sh || exit 1
        cd xnp
        zip xnp.zip -x '.git*' -x 'README*' -r . -y
        cd -
        ;;
esac
