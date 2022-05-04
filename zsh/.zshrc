# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Default denver ohmyzsh .zshrc
# -----------------------------
# Variables with `{...}` will be replaced in the install script.
# See templates/README.md for more information

# For more custom options in your own .zshrc:
# https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# It's over ten thousaaand!
ZSH_THEME="powerlevel10k/powerlevel10k"

# Directory for custom scripts to be sourced and loaded from
# ZSH_CUSTOM=  ... TODO

plugins=(
    direnv
    git
    gitfast
    history-substring-search
    kubectl
    ripgrep
)

# 1. Load the p10k prompt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 2. Load up ohmyzsh
source "$ZSH/oh-my-zsh.sh"

# 3. Reload completions for zsh-completions
autoload -U compinit && compinit

# Enable linuxbrew.
# Because Apple runs the world ...
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ----- enable batcat alias
alias bat=batcat

# ----- Load local secrets
source ~/.secrets.zshrc

# ----- Vim is life. Life is vim
alias vim=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

# ----- Jump
eval "$(jump shell)"

# ----- Golang
export GOBIN="/home/jmcb/go/bin"
PATH="$PATH:/usr/local/go/bin:/home/jmcb/go/bin"

# ----- GPG
export GPG_TTY=$(tty)

# ----- Some java bullll shitttt
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

[[ -s "/home/jmcb/.gvm/scripts/gvm" ]] && source "/home/jmcb/.gvm/scripts/gvm"

# ----- NVM, node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
