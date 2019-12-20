#!/bin/bash

sudo apt install build-essential libevent-dev libncurses-dev -y

wget https://github.com/tmux/tmux/releases/download/3.0a/tmux-3.0a.tar.gz

tar -zxvf tmux-3.0a.tar.gz
cd tmux-3.0a
./configure
make
sudo make install
cd ..
rm -rf tmux-3.0a
rm tmux-3.0a.tar.gz
