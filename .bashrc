# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
 
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
export PATH="$PATH:$HOME/.ft"
alias vim=nvim
alias v=nvim

# pnpm
export PNPM_HOME="/root/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#

# PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# vscode embed terminal
if [[ "$TERM_PROGRAM" == 'vscode' && -f ".env" ]]; then
	set -a && source .env && set +a && \
	echo "✅ loaded .env"
fi

# PS1
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt via kirsle.net/wizards/ps1.html
if [[ -n $ZELLIJ ]]; then
	PS1="\[$(tput setaf 1)\] \\$ \[$(tput sgr0)\] "
else
	eval "$(starship init bash)"
fi

if [[ -f "$HOME/.bashrc_secret" ]]; then
	source "$HOME/.bashrc_secret"
fi

# kube editor
export EDITOR="nvim"
# kubectl complete
source <(kubectl completion bash)
source <(helm completion bash)
alias z=zellij
export LC_ALL=C
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
