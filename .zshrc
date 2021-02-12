# Oh-My-ZSH config
export ZSH="/Users/evanbrierton/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ZSH config
unsetopt PROMPT_SP

# aliases
alias brew="arch -arm64 brew"
alias rm="trash"
alias sshcopy="pbcopy < ~/.ssh/id_ed25519.pub"
alias code="open -a Visual\ Studio\ Code"

# PATH
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
unset zle_bracketed_paste
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
