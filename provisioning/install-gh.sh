#!/bin/bash

# Get the name of the most recent release asset
# https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
RELEASE=$(curl --silent "https://api.github.com/repos/cli/cli/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")');
VERSION=${RELEASE/v/gh_} ;
FILENAME="${VERSION}_linux_amd64.deb";

# Download the asset file
wget "https://github.com/cli/cli/releases/download/${RELEASE}/${FILENAME}";

# Install the asset
sudo dpkg -i $FILENAME;

# Remove the downloaded file
rm $FILENAME;
