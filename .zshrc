ZSH=$HOME/.oh-my-zsh
autoload -U promptinit; promptinit
ZSH_THEME="avit"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
plugins=(git bundler gem rbenv nvm)
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export TERM=xterm-256color
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/bin/elasticsearch-6.8.18/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

eval "$(rbenv init -)"

# magical line to fix the weird colors with `ls` (like black background of dirs)
#eval $(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)

export BAT_THEME="Nord"

# TODO: make a version with fallback to ls
alias ls="exa -hgbH --git --group-directories-first"
alias la="exa -lahgbH --git --group-directories-first"
alias diff="colordiff"

alias tmx="tmuxinator"
alias tmuxn="tmux new -s \"$(pwd | awk -F '/' '{print $NF}')\""
alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias zshrc="vim ~/.zshrc"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias tiga="tig --all"
alias ag="rg"
alias tg="rg"
alias rials="rails"
alias gti="git"
alias grep="rg"
alias grpe="grep"
alias rc="bundle exec rails console"
alias rs="bundle exec rails server"
alias rs1="bundle exec rails server -p 3001"
alias rt="bundle exec rails test"
alias rr="bundle exec rails routes"
alias rdbc="bundle exec rails db:create"
alias rdbm="bundle exec rails db:migrate"
alias rdbr="bundle exec rails db:rollback"
alias rdbs="bundle exec rails db:setup"
alias rgm="bundle exec rails generate migration"
alias cr="cargo run"
