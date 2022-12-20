#!/bin/bash
# Set up symbolic links to the dotfiles in this repo.
# https://github.com/laracasts/laracasts-dotfiles/blob/main/install

# Capture our current working directory
PROJECT_ROOT=$(cd $(dirname "${BASH_SOURCE[0]}")/.. && pwd)

# Bash Profile
echo "Created symbolic link to .bash_profile"
rm $HOME/.bash_profile
ln -s $PROJECT_ROOT/dotfiles/.bash_profile $HOME/.bash_profile

# Bash RC
echo "Created symbolic link to .bashrc"
rm $HOME/.bashrc
ln -s $PROJECT_ROOT/dotfiles/.bashrc $HOME/.bashrc

# Alacritty config
echo "Created symbolic link to ~/.config/alacritty"
rm -rf $HOME/.config/alacritty
ln -s $PROJECT_ROOT/conf/alacritty $HOME/.config/alacritty

# Tmux
echo "Created symbolic link to ~/.tmux.conf"
rm $HOME/.tmux.conf
ln -s $PROJECT_ROOT/conf/tmux/tmux.conf $HOME/.tmux.conf

# NeoVim
echo "Created symbolid link to ~/.config/nvim"
rm -rf $HOME/.config/nvim
ln -s $PROJECT_ROOT/conf/nvim $HOME/.config/nvim

# Add profile and bashrc updates to the current terminal session
source ~/.bash_profile
