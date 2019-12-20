#!/bin/bash

# Make sure we have a destination folder for the plugins
if [ ! -d ~/.vim/bundle ]
then
    mkdir ~/.vim/bundle
fi

# Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ] 
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# CtrlP
if [ ! -d ~/.vim/bundle/ctrlp.vim ]
then
    git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
fi

# Night Owl Theme
if [ ! -d ~/.vim/bundle/night-owl.vim ]
then
    git clone https://github.com/haishanh/night-owl.vim.git ~/.vim/bundle/night-owl.vim
fi

# Nerd Tree
if [ ! -d ~/.vim/bundle/nerdtree ]
then
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi
