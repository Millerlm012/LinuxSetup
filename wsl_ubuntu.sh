#!/bin/bash

# COPY SSH KEY FROM WINDOWS TO LINUX - some command cp -r /mnt to ~/.ssh

# UPDATING PACKAGES AND MANAGER
sudo apt-get update && sudo apt-get -y upgrade

# INSTALLING MAIN PACKAGES
sudo apt-get install vim

# INSTALLING DOCKER
curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-docker.sh | /bin/bash
