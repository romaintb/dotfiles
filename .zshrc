ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git themes)
source $ZSH/oh-my-zsh.sh

# all this for the vi mode
set editing-mode vi
set blink-matching-paren on
bindkey -v
export KEYTIMEOUT=1 # remove that 0.4s lag


EDITOR=vim
TERM=xterm-256color

export PATH="/usr/local/bin:$HOME/bin:$HOME/.rbenv/bin:/usr/local/opt/go/libexec/bin:$PATH"
export GOPATH="$HOME/.go"
export LARAVEL_ENV="local"
export NODE_ENV="dev"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="/home/romain/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "~/perl5/perlbrew/etc/bashrc" ]] && source ~/perl5/perlbrew/etc/bashrc
eval "$(rbenv init -)"
source ~/.nvm/nvm.sh


case `uname` in
    Darwin)
        alias ls='ls -pG'
        alias vim='reattach-to-user-namespace vim'
        ;;
    Linux)
        #foo
        ;;
esac

#alias tig='tig --all'
