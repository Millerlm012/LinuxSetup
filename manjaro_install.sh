#!/bin/bash
# ABOUT: to install applications and utilities that will be needed/wanted on manjaro

# updating packages and manager
sudo pacman -Syu

# installing applications from pacman
sudo pacman -S spotify-launcher discord brave-browser git make docker docker-compose sqlitebrowser vim

# YAY
cd /tmp/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si

# updating yay and packages after install
yay -syu

# VSCODIUM
yay -S vscodium-bin

# DOCKER
# https://linuxways.net/manjaro/how-to-install-docker-on-manjaro-linux/
sudo systemctl start docker.service
sudo systemctl enable docker.service
# ability to run docker without root
sudo usermod -aG docker $USER
