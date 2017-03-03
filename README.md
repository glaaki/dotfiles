dotfiles
========

A simple dotfile setup for zsh, vim and tmux.

Setup
--------
Check out VimConf to your home folder like so:

```bash
cd ~
git clone --recursive git://github.com/S-Porter/dotfiles.git
```

symlink the files from the repo to your home directory like this:
```bash
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
```

When you open Vim for the first time you'll need to run `:PlugInstall` to actually pull down the plugins. Tmux user overrides should go in `.tmux.conf.local`.

