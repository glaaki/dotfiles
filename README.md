dotfiles
========

A dotfile setup for zsh, vim and tmux. This also includes my iterm2 backup.

Other various bit of this include:
- Base16 iTerm2 with the SetiUI theme for the great text colors: https://github.com/chriskempson/base16-iterm2
- Geometry, for the prompt/nice git branch parts: https://github.com/frmendes/geometry
- zsh-syntax-highlighting, for the (you guessed it) zsh syntax highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
- Powerline for the fancy vim status bar: https://github.com/powerline/powerline

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

screenshot of current setup:
![reference ss](current_iterm_setup.png)

TODO:
- theme the vim powerline to match everything else.
