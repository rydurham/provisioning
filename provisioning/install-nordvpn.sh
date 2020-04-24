#!/bin/bash

# https://nordvpn.com/download/linux/
curl --remote-name https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt-get install $(pwd)/nordvpn-release_1.0.0_all.deb
sudo apt-get update
sudo apt-get install nordvpn
