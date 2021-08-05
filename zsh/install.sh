#!/usr/bin/env zsh

r="$( cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install .oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Get Powerlevel10k into .oh-my-zsh dir
git clone \
    --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Sym-link the .zshrc
pushd $r
    rm -rf ~/.zshrc
    ln -s ~/workspace/dotfiles/zsh/.zshrc ~/.zshrc
popd

