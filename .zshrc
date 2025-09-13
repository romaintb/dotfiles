ZSH=$HOME/.oh-my-zsh
autoload -U promptinit; promptinit
ZSH_THEME="avit"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi

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
eval "$(zoxide init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

export BAT_THEME="Catppuccin Mocha"

alias ag="rg"
alias c="claude"
alias cc="cargo check"
alias cd="z"
alias cf="cargo fmt"
alias cr="cargo run"
alias ct="cargo test"
alias cu="cargo update"
alias diff="delta"
alias ff="fd | fzf"
# alias ffp="fzf --preview 'bat --color=always --style=numbers --line-range :{}:{} {}'"
# alias ffp="fzf --delimiter : --preview 'bat --color=always --style=numbers --line-range {2}: {1}'"
alias ffp="fd | fzf --preview 'bat --color=always --style=numbers {}'"
alias gca="git commit --amend"
alias gfp="git fetch -p --all"
alias gpr="git pull --rebase"
alias grc="git rebase --continue"
alias grep="rg"
alias grpe="grep"
alias gti="git"
alias la="eza -lahgbH --git --group-directories-first"
alias lg="lazygit"
alias ls="eza -hgbH --git --group-directories-first"
alias oc="opencode ."
alias osi="yay -S"
alias oss="yay -Ss"
alias osu="yay -Suy"
alias osuu="yay -Suuy"
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
alias v="vim"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.lua"
alias zn="zellij"
alias za="zellij attach"
alias zreload="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"

