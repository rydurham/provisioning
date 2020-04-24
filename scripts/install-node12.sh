#!/bin/bash

# Install Node and NPM
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs

# Move our "global folder" to the home directory to avoid permissioning problems
# https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally
if [ ! -d ~/.npm-global ]
then
    mkdir ~/.npm-global
fi

# Configure NPM to use our local directory for global packages
npm config set prefix '~/.npm-global'

# Refresh our working environment
source ~/.bashrc
