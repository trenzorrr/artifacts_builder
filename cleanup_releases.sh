#!/bin/bash

if [ "$TRAVIS_OS_NAME" = linux ]; then
    go get github.com/aktau/github-release
    releases=$(github-release info --user trenzorrr --repo artifacts_builder)
    rel_tags=$(echo "$releases" | sed -n '/releases:/,$ p' | grep '^- '| sed -r 's/^- (.*), name:.*/\1/')

    ttag=${TRAVIS_TAG//*-}
    case "$ttag" in
        xnp)
            old_xnp_tags=$(echo "$rel_tags" | grep 'xnp$' | tail +2)
            IFS=$'\n'
            for t in $old_xnp_tags; do
                github-release delete --user trenzorrr --repo artifacts_builder -t "$t"
            done
            ;;
        mcc)
            old_mcc_tags=$(echo "$rel_tags" | grep -v 'xnp$' | tail +2)
            IFS=$'\n'
            for t in $old_mcc_tags; do
                github-release delete --user trenzorrr --repo artifacts_builder -t "$t"
            done
            ;;
    esac
fi

exit 0
