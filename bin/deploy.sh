#!/bin/bash

# Capure our current working directory
wd=$( pwd )

# Bash Profile
echo "cp ~/.bash_profile" 
cp $wd/dotfiles/.bash_profile ~/.bash_profile

# Bash RC
echo "cp ~/.bashrc"
cp $wd/dotfiles/.bashrc ~/.bashrc

# Profile
echo "cp ~/.profile"
cp $wd/dotfiles/.profile ~/.profile

# Ensure the ~/.vim directories exists
if [ ! -d ~/.vim ]
then
    mkdir ~/.vim	
fi

if [ ! -d ~/.vim/swap-files ]
then
    mkdir ~/.vim/swap-files
fi

if [ ! -d ~/.vim/backups ]
then
    mkdir ~/.vim/backups
fi

# Vim RC
echo "cp ~/.vimrc"
cp $wd/dotfiles/.vimrc ~/.vimrc

# Vim Plugins List
echo "cp ~/.vim/plugins.vim"
cp $wd/dotfiles/plugins.vim ~/.vim/plugins.vim

# Tmux Conf
echo "cp ~/.tmux.conf"
cp $wd/dotfiles/.tmux.conf ~/.tmux.conf
