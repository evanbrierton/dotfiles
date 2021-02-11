# Oh-My-ZSH config
export ZSH="/Users/evanbrierton/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Hyper config
unsetopt PROMPT_SP

# aliases
alias brew="arch -arm64 brew"
alias rm="trash"

# PATH
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
