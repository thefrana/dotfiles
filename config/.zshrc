### Exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/$USER/.oh-my-zsh"
export ELECTRON_TRASH=gio
export BROWSER=chromium
export EDITOR=vim


### Variables
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git docker autoupdate zsh-syntax-highlighting zsh-completions)


### Commands
source $ZSH/oh-my-zsh.sh

# from zsh-completions docs
autoload -U compinit && compinit


### Aliases
alias pls="sudo"
alias please="sudo"
alias murder='/bin/rm -rf'
alias rm="gio trash -f"
alias perm="sudo chmod a+x"
alias dc="docker-compose"
alias :q="exit"

