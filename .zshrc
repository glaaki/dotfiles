# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# GOROOT-based install location
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# GOPATH
export GOPATH=$HOME/Projects
export PATH=$PATH:$GOPATH/bin

# Required for oh-my-tmux!
export TERM=xterm-256color

# Add Anaconda to the path
export PATH=~/anaconda3/bin:$PATH

# fixes ycm python crash when opening vim.
# https://github.com/Valloric/YouCompleteMe/issues/620
export DYLD_FORCE_FLAT_NAMESPACE=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="amuse"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="avit"
#ZSH_THEME="cloud"
#ZSH_THEME="gallois"
#ZSH_THEME="garyblessington"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="nanotech"
#ZSH_THEME="nebirhos"
#ZSH_THEME="simple"
#ZSH_THEME="smt"
#ZSH_THEME="sorin"
#ZSH_THEME="sunaku"
#ZSH_THEME="sunrise"
#ZSH_THEME="wedisagree"
ZSH_THEME="geometry/geometry"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang python php alias-tips zsh-autosuggestions)
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="bruh, use alias: "

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# create some vim dirs for holding temp files in one place
mkdir -p ~/.vim/swapfiles
mkdir -p ~/.vim/backups

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias dot="cd ~/dotfiles/"
alias proj="cd ~/Projects/"
alias gh="cd ~/Projects/development"
alias dash="cd ~/Projects/src/github.com/glaaki/koober-dash/"
alias koob="cd ~/Projects/src/github.com/glaaki/koober-dash/"
alias ls="ls -AFG"

# source the .extra file if it exists for user-specific config (like secrets)
[ -f .extra ] && source .extra

# this must be at the end of the file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
