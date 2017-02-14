
export LANG=ja_JP.UTF-8

autoload -Uz compinit
compinit

fpath=(/usr/local/share/zsh-completions $fpath)

# history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# colors
autoload -U colors
colors

# prompt colors
PROMPT="%{${fg[green]}%}[%n@%~]%{${reset_color}%}"
# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# functions
git_current_branch(){
  local ref
  ref=$(command git rev-parse --abbrev-ref HEAD 2> /dev/null)
  echo $ref
}

# aliases

# posix
if [[ "$OSTYPE" == darwin* ]] then;
  alias ls='ls -G'
fi
alias ll='ls -al'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## git
alias g='git'
alias gb='git branch'
alias gs='git status'
alias gp='git pull'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
alias ggpull='git pull origin ${git_current_branch}'
alias ggpush='git push origin ${git_current_branch}'
