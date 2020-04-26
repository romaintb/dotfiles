ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git bundler docker gem sudo tmux themes)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export TERM=xterm-256color
export PATH="/usr/local/bin:$HOME/bin:$HOME/.rbenv/bin:$PATH"
export NVM_DIR="/home/romain/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
eval "$(rbenv init -)"

# magical line to fix the weird colors with `ls` (like black background of dirs)
eval $(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)

alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias rails="bundle exec rails"
alias rake="bundle exec rake"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias tiga="tig --all"
