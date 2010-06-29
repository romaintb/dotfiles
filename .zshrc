# ================================ #
# Les variables de l'environnement #
# ================================ #
source /etc/profile
export TERM=xterm-color #oui, des couleurs, pleins
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export PATH=$PATH:/usr/sbin:/sbin:/usr/local/sbin:/sbin


# ========= #
# Les alias #
# ========= #
alias ls='colorls -GF'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias 'cd..'='cd ..'
alias df='df -h'


# ================== #
# Les options de ZSH #
# ================== #

autoload -U compinit # autocompletion
compinit

autoload -U promptinit # les prompts de zsh (prompt -l, -p ...)
promptinit
prompt adam1 blue

