#!/bin/bash

# Get the name of the most recent release asset
# https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
RELEASE=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")');
FILENAME="docker-compose-linux-x86_64";

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/${RELEASE}/${FILENAME}" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
