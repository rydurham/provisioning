#!/bin/bash

# Capture our current working directory
wd=$( pwd )

# Bash Profile
echo "mv ~/.bash_profile" 
cp $wd/dotfiles/.bash_profile ~/.bash_profile

# Bash RC
echo "mv ~/.bashrc"
cp $wd/dotfiles/.bashrc ~/.bashrc

# Profile
echo "mv ~/.profile"
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
echo "mv ~/.vimrc"
cp $wd/dotfiles/.vimrc ~/.vimrc

# Vim Plugins List
echo "mv ~/.vim/plugins.vim"
cp $wd/dotfiles/plugins.vim ~/.vim/plugins.vim

# Tmux Conf
echo "mv ~/.tmux.conf"
cp $wd/dotfiles/.tmux.conf ~/.tmux.conf
