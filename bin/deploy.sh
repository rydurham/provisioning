#!/bin/bash

# Capure our current working directory
wd=$( pwd )

# Bash Profile
echo "cp ~/.bash_profile" 
cp $wd/dotfiles/.bash_profile ~/.bash_profile

# Bash RC
echo "cp ~/.bashrc"
cp $wd/dotfiles/.bashrc ~/.bashr

# Profile
echo "cp ~/.profile"
cp $wd/dotfiles/.profile ~/.profile

# Vim RC
echo "cp ~/.vimrc"
cp $wd/dotfiles/.vimrc ~/.vimr

# Tmux Conf
echo "cp ~/.tmux.conf"
cp $wd/dotfiles/.tmux.conf ~/.tmux.conf
