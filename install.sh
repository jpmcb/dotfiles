#!/usr/bin/env bash

r="$( cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

## -- Git --
rm -rf ~/.git-template

pushd $r
    ln -s $r/git-template ~/.git-template
popd

