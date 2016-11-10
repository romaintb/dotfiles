ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git archlinux bundler docker gem sudo tmux themes)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export TERM=xterm-256color
export PATH="/usr/local/bin:$HOME/bin:$HOME/.rbenv/bin:$PATH"
export NVM_DIR="/home/romain/.nvm"
#export NODE_ENV="dev"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
eval "$(rbenv init -)"

# bug with irssi where only half of the screen scrolls and suck bugs ...
alias irssi='TERM=screen irssi'

alias rails="bundle exec rails"
alias rials="rails"
alias rc="rails c"
alias rs="rails s"
alias rt="rails test"
alias rr="rails rubocop"
alias rake="bundle exec rake"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias grpe="grep"
alias tiga="tig --all"
alias cim="vim"
