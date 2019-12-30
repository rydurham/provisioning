#!/bin/bash

# Make sure we have a destination folder for the plugins
if [ ! -d ~/.vim/bundle ]
then
    echo "Creating ~/.vim/bundle"
    mkdir ~/.vim/bundle
fi

# Vundle
echo "Vundle Plugin"
if [ ! -d ~/.vim/bundle/Vundle.vim ] 
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    cd ~/.vim/bundle/Vundle.vim
    git pull
    cd $OLDPWD
fi

# CtrlP
echo "Ctrl-P Plugin"
if [ ! -d ~/.vim/bundle/ctrlp.vim ]
then
    git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
else
    cd ~/.vim/bundle/ctrlp.vim
    git pull
    cd $OLDPWD
fi

# Night Owl Theme
echo "Night Owl Plugin"
if [ ! -d ~/.vim/bundle/night-owl.vim ]
then
    git clone https://github.com/haishanh/night-owl.vim.git ~/.vim/bundle/night-owl.vim
else
    cd ~/.vim/bundle/night-owl.vim
    git pull
    cd $OLDPWD
fi

# Nerd Tree
echo "Nerd Tree Plugin"
if [ ! -d ~/.vim/bundle/nerdtree ]
then
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
else
    cd ~/.vim/bundle/nerdtree
    git pull
    cd $OLDPWD
fi

# Lightline 
echo "Lightline Plugin"
if [ ! -d ~/.vim/bundle/lightline.vim ]
then
    git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline.vim
else 
    cd ~/.vim/bundle/lightline.vim
    git pull
    cd $OLDPWD
fi

# Vim-Elixir 
echo "Vim-Elixir Plugin"
if [ ! -d ~/.vim/bundle/vim-elixir ]
then
    git clone https://github.com/elixir-editors/vim-elixir.git ~/.vim/bundle/vim-elixir
else
    cd ~/.vim/bundle/vim-elixir
    git pull
    cd $OLDPWD
fi  

# PHP.vim
echo "PHP.vim Plugin"
if [ ! -d ~/.vim/bundle/php.vim ]
then
    git clone https://github.com/StanAngeloff/php.vim.git ~/.vim/bundle/php.vim
else 
    cd ~/.vim/bundle/php.vim
    git pull
    cd $OLDPWD
fi

# vim-surround
echo "Vim-Surround Plugin"
if [ ! -d ~/.vim/bundle/vim-surround ]
then
    git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
else 
    cd ~/.vim/bundle/vim-surround
    git pull
    cd $OLDPWD
fi
