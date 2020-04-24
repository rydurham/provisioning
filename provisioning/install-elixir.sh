#!/bin/bash

# https://elixir-lang.org/install.html#unix-and-unix-like
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt update
sudo apt install esl-erlang -y
sudo apt install elixir -y

rm erlang-solutions_2.0_all.deb
