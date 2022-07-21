#!/bin/bash

# Install Docker
sudo apt install docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
# Log out and log back in (or restart) to see the group assignments updated
