#!/bin/bash

RELEASE=go1.15.3.linux-amd64.tar.gz

wget https://golang.org/dl/${RELEASE}
sudo tar -C /usr/local -xzf ${RELEASE}
rm ${RELEASE}
source ~/.profile
go version
