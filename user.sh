#!/bin/sh

# directories
mkdir -p ~/sync
mkdir -p ~/.config

# symlinks
rm ~/Downloads
rm ~/inbox
rm ~/dev
rm ~/zettelkasten
ln -s /mnt/admin/Downloads ~
ln -s /mnt/admin/inbox ~
ln -s /mnt/admin/dev ~
ln -s ~/sync/notes ~/zettelkasten

# data
rm ~/.task
rm ~/.timewarrior
ln -s ~/sync/files/taskwarrior ~/.task
ln -s ~/sync/files/timewarrior ~/.timewarrior

# dotfiles
mkdir -p ~/.config/fish
rm ~/.config/fish/config.fish
ln -s ~/.dots/user/config/fish/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/gh
rm ~/.config/gh/config.yml
ln -s ~/.dots/user/config/gh/config.yml ~/.config/gh/config.yml

mkdir -p ~/.config/git
rm ~/.config/git/config
ln -s ~/.dots/user/config/git/config ~/.config/git/config

mkdir -p ~/.config/nvim/autoload
rm ~/.config/nvim/init.vim
rm ~/.config/nvim/autoload/plug.vim
ln -s ~/.dots/user/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dots/user/config/nvim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim

rm ~/.timewarrior/timewarrior.cfg
rm ~/.taskrc
ln -s ~/.dots/user/timewarrior/timewarrior.cfg ~/.timewarrior/timewarrior.cfg
ln -s ~/.dots/user/taskrc ~/.taskrc

rm ~/.npmrc
rm ~/.tmux.conf
rm ~/.vimrc
ln -s ~/.dots/user/npmrc ~/.npmrc
ln -s ~/.dots/user/tmux.conf ~/.tmux.conf
ln -s ~/.dots/user/vimrc ~/.vimrc

