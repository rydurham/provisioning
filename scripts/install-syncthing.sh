#!/bin/bash

# Capture our current working directory
wd=$( pwd )

# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt update
sudo apt install apt-transport-https syncthing

# Configure systemd service
if [ ! -d ~/.config/systemd/user ]
then
    mkdir -p ~/.config/systemd/user
fi

cp $wd/conf/syncthing.service ~/.config/systemd/user
systemctl --user enable syncthing.service
systemctl --user start syncthing.service
