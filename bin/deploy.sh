#!/bin/bash

# Capture our current working directory
wd=$( pwd )
echo $wd

# # Bash Profile
echo "mv ~/.bash_profile"
cp $wd/dotfiles/.bash_profile ~/.bash_profile
sed -i "s@DIR@$wd@g" ~/.bash_profile

# Bash RC
echo "mv ~/.bashrc"
cp $wd/dotfiles/.bashrc ~/.bashrc
sed -i "s@DIR@$wd@g" ~/.bashrc

# Profile
echo "mv ~/.profile"
cp $wd/dotfiles/.profile ~/.profile
sed -i "s@DIR@$wd@g" ~/.profile

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

# Alacritty
echo "mv ~/.config/alacritty/alacritty.yml"
if [ ! -d ~/.config/alacritty ]
then
    mkdir ~/.config/alacritty
fi
cp $wd/dotfiles/config/alacritty.yml ~/.config/alacritty/alacritty.yml

# Add profile and bashrc updates to the current terminal session
source ~/.profile
