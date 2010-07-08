# ================================ #
# Les variables de l'environnement #
# ================================ #
source /etc/profile
export TERM=xterm-color #oui, des couleurs, pleins
#export LSCOLORS="Gxfxcxdxbxegedabagacad" # bsd
export LS_COLORS='di=1;36' # linux
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export PATH=$HOME/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin
export EDITOR=vim


# ========= #
# Les alias #
# ========= #
#alias ls='colorls -GF'  #bsd
alias ls='ls --color -F' #linux
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias 'cd..'='cd ..'
alias df='df -h'
alias startx='echo nan, pas bien, utilise la commande x'
alias x='/usr/bin/startx; exit'
alias todo="w2do --color"


# ================== #
# Les options de ZSH #
# ================== #

# autocompletion
autoload -U compinit
compinit

# les prompts de zsh (prompt -l, -p ...)
autoload -U promptinit
promptinit
prompt adam1 blue
