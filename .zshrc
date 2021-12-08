ZSH=$HOME/.oh-my-zsh
autoload -U promptinit; promptinit
prompt pure
# ZSH_THEME="avit"
#plugins=(asdf git bundler gem themes)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
plugins=(git bundler gem rbenv nvm)
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export TERM=xterm-256color
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/bin/elasticsearch-6.8.18/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# magical line to fix the weird colors with `ls` (like black background of dirs)
#eval $(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)

# TODO: make a version with fallback to ls
alias ls="exa -hgbH --git --group-directories-first"
alias la="exa -lahgbH --git --group-directories-first"

alias tmx="tmuxinator"
alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias zshrc="vim ~/.zshrc"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias tiga="tig --all"
alias ag="rg"
alias tg="rg"
alias rials="rails"
alias rc="bundle exec rails console"
alias rs="bundle exec rails server"
alias rt="bundle exec rails test"
alias rr="bundle exec rails routes"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
