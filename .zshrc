ZSH=$HOME/.oh-my-zsh
autoload -U promptinit; promptinit
ZSH_THEME="avit"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
plugins=(git bundler gem rbenv nvm)
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
# export TERM=screen-256color
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
export EZA_COLORS="di=1;34"
export EZA_ICONS_AUTO="true"

eval "$(rbenv init -)"

# rust
. "$HOME/.cargo/env"

# ssh-agent for spectrwm
eval $(keychain --eval --quiet)

# magical line to fix the weird colors with `ls` (like black background of dirs)
#eval $(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)

export BAT_THEME="Nord"

# TODO: make a version with fallback to ls
alias ls="eza -hgbH --git --group-directories-first"
alias la="eza -lahgbH --git --group-directories-first"
alias diff="colordiff"

alias ag="rg"
alias cr="cargo run"
alias cc="cargo check"
alias cf="cargo fmt"
alias gca="git commit --amend"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias grep="rg"
alias grpe="grep"
alias gti="git"
alias lg="lazygit"
alias rc="bundle exec rails console"
alias rdbc="bundle exec rails db:create"
alias rdbm="bundle exec rails db:migrate"
alias rdbr="bundle exec rails db:rollback"
alias rdbs="bundle exec rails db:setup"
alias rgm="bundle exec rails generate migration"
alias rr="bundle exec rails routes"
alias rs="bundle exec rails server"
alias rt="bundle exec rails test"
alias tg="rg"
alias tiga="tig --all"
alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.lua"
alias z="zellij"
alias zshrc="vim ~/.zshrc"

