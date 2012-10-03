# ================================ #
# Les variables de l'environnement #
# ================================ #
source /etc/profile
#export TERM=xterm-color #oui, des couleurs, pleins
export TERM="xterm-256color"
#export LSCOLORS="Gxfxcxdxbxegedabagacad" # bsd
export LS_COLORS='di=1;36' # linux
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export PATH=$HOME/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin:/var/lib/gems/1.8/bin
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

# git
alias gci='git commit'
alias gpom='git push origin master'
alias gup='git pull origin master'


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
