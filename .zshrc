ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git archlinux bundler docker gem sudo tmux themes)
source $ZSH/oh-my-zsh.sh

EDITOR=vim
TERM=xterm-256color

export PATH="/usr/local/bin:$HOME/bin:$HOME/.rbenv/bin:$PATH"
export NODE_ENV="dev"

export NVM_DIR="/home/romain/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(rbenv init -)"

# bug with irssi where only half of the screen scrolls and suck bugs ...
alias irssi='TERM=screen irssi'

