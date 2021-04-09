#!/usr/bin/env bash

r="$( cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin

pushd $r
    for f in `find * -regex ".*\.vim$"`; do
        echo $f
        rm -rf ~/.config/nvim/$f
        ln -s ~/workspace/dotfiles/nvim/$f ~/.config/nvim/$f
    done
popd
