# Oh-My-ZSH config
export ZSH="/Users/evanbrierton/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git git-flow-completion)
source $ZSH/oh-my-zsh.sh

# ZSH config
unsetopt PROMPT_SP

# aliases
alias brew="arch -arm64 brew"
alias rm="trash"
alias ls="exa"
alias cat="bat"
alias sshcopy="pbcopy < ~/.ssh/id_ed25519.pub"
alias code="open -a Visual\ Studio\ Code"
alias ip="ipconfig getifaddr en0"

# PATH
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# opts
unset zle_bracketed_paste

git-stats() {
	author=${1-`git config --get user.name`}

	echo "Commit stats for \033[1;37m$author\033[0m:"
	git log --shortstat --author $author -i 2> /dev/null \
		| grep -E 'files? changed' \
		| awk 'BEGIN{commits=0;inserted=0;deleted=0} \
			{commits+=1; if($5!~"^insertion") { deleted+=$4 } \
			else { inserted+=$4; deleted+=$6 } } END \
			{print "\033[1;34m↑↑\033[1;37m", commits \
			"\n\033[1;32m++\033[1;37m", inserted, \
			"\n\033[1;31m--\033[1;37m", deleted, "\033[0m"}'
}

