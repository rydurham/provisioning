#!/bin/bash

# Capure our current working directory
wd=$( pwd )

# Bash Profile
echo "cp ~/.bash_profile" 
cp ~/.bash_profile $wd/dotfiles/.bash_profile

# Bash RC
echo "cp ~/.bashrc"
cp ~/.bashrc $wd/dotfiles/.bashrc

# Profile
echo "cp ~/.profile"
cp ~/.profile $wd/dotfiles/.profile

# Vim RC
echo "cp ~/.vimrc"
cp ~/.vimrc $wd/dotfiles/.vimrc

# Vim Plugin List
echo "cp ~/.vim/plugins.vim"
cp ~/.vim/plugins.vim $wd/dotfiles/plugins.vim

# Tmux Conf
echo "cp ~/.tmux.conf"
cp ~/.tmux.conf $wd/dotfiles/.tmux.conf
