# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
 if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
 fi

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
)

export PATH="$PATH:$HOME/.local/bin"

# 1. Load the p10k prompt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 2. Load up ohmyzsh
source "$ZSH/oh-my-zsh.sh"

# 3. Reload completions for zsh-completions
autoload -U compinit && compinit

# ----- enable batcat alias
alias bat=batcat

# ----- Load local secrets
source ~/.secrets.zshrc

# ----- Vim is life. Life is vim
alias vim=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

# ----- load brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----- Golang paths
# Go recommends installing go to /usr/local
# These env vars ensure go and it's installed binaries are installable
export GOBIN="$HOME/.local/bin"
export PATH="$PATH:/usr/local/go/bin:$GOBIN"

# ----- Jump
eval "$(jump shell)"

# ----- GPG
export GPG_TTY=$(tty)

# ----- NVM, node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----- Source FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

# ----- Brew is great ... i love brew so much ...
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/jpmcb/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Zig is cool isn't it.
export PATH="$PATH:$HOME/.local/bin/zig-master"

# Fly away ... fly away little bird!
export FLYCTL_INSTALL="/Users/jpmcb/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"

# added by Snowflake SnowflakeCLI installer v1.0
export PATH=/Applications/SnowflakeCLI.app/Contents/MacOS/:$PATH


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/jpmcb/.opam/opam-init/init.zsh' ]] || source '/Users/jpmcb/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jpmcb/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jpmcb/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jpmcb/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jpmcb/google-cloud-sdk/completion.zsh.inc'; fi

# Load Postgres binaries from brew
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
