#!/bin/bash

if [ ! -d ~/.vim/bundle ]
then
	mkdir ~/.vim/bundle
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ] 
then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -d ~/.vim/bundle/ctrlp.vim ]
then
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
fi



