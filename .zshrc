ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(asdf git bundler gem themes)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export TERM=xterm-256color
export PATH="/usr/local/bin:$HOME/bin:$PATH"

# magical line to fix the weird colors with `ls` (like black background of dirs)
#eval $(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)

alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias tiga="tig --all"
