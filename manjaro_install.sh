#!/bin/bash
# ABOUT: to install applications and utilities that will be needed/wanted on manjaro

# updating packages and manager
sudo pacman -Syu

# installing applications from pacman
sudo pacman -S spotify-launcher discord brave-browser git make patch docker docker-compose sqlitebrowser vim caffeine-ng nvm qopenvpn python-pip

# YAY
cd /tmp/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si

# updating yay and packages after install
yay -Syu

# VSCODIUM
yay -S vscodium-bin --noconfirm

# DOCKER
# https://linuxways.net/manjaro/how-to-install-docker-on-manjaro-linux/
sudo systemctl start docker.service
sudo systemctl enable docker.service
# ability to run docker without root
sudo usermod -aG docker $USER

# NODE/NPM
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec $SHELL
nvm install 16.14
nvm alias default v16.14

# SLACK
yay -S slack-desktop --noconfirm

# PROSPECT MAIL (outlook for linux)
wget https://github.com/julian-alarcon/prospect-mail/releases/download/v0.3.0/prospect-mail-0.3.0.pacman
sudo pacman -U prospect-mail-0.3.0.pacman

# REMMINA REMOTE DESKTOP
yay -S remina-git --noconfirm

# REBOOT is necessary after completing all of the following
sudo reboot
