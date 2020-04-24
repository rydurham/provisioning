#!/bin/bash

# Install Docker
sudo apt install docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
# Log out and log back in (or restart) to see the group assignments updated

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
