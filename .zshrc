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
# My favorites: amuse alanpeabody avit cloud gallois garyblessington
#               miloshadzic nanotech nebirhos simple smt sorin sunaku
#               sunrise wedisagree
ZSH_THEME="geometry/geometry"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang python php alias-tips zsh-autosuggestions)
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="bruh, use alias: "

source $ZSH/oh-my-zsh.sh

# User configuration

# set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

# Compilation flags
export ARCH="x86_64"
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# create some vim dirs for holding temp files in one place
mkdir -p ~/.vim/swapfiles
mkdir -p ~/.vim/backups

# source .aliases & .extra file if they exist. use .extra for not-git things (like secrets)
[ -f .extra ] && source .extra
[ -f .aliases ] && source .aliases

# this must be at the end of the file
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
