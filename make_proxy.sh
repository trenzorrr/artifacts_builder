## skip server build for osx
case "$TRAVIS_OS_NAME" in
    linux)
        if [ "${TRAVIS_TAG/proxy}" != "$TRAVIS_TAG" ]; then
            docker exec -it buildct_ubu bash /build/build.sh || exit 1
            cd xnp
            zip xnp.zip -x '.git*' -x 'README*' -r . -y
            cd -
        fi
        ;;
esac
