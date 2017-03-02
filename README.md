dotfiles
========

A simple dotfile setup for zsh and vim.

Setup
--------
Check out VimConf to your home folder like so:

```bash
cd ~
git clone --recursive git://github.com/S-Porter/dotfiles.git
```

symlink the files from the repo to your home directory like this:
```bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

When you open Vim for the first time you'll need to run `:PlugInstall` to actually pull down the plugins.

