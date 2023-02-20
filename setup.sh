#!/usr/bin/env bash

# Upgrade
sudo apt update
sudo apt upgrade -y

# Wine
sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources ~/Downloads/winehq-jammy.sources
wget -nc https://dl.winehq.org/wine-builds/winehq.key ~/Downloads/winehq.key

sudo mv ~/Downloads/winehq-jammy.sources /etc/apt/sources.list.d/
sudo mv ~/Downloads/winehq.key /usr/share/keyrings/winehq-archive.key 

sudo apt install --install-recommends wine-stable -y

# Add repos
sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer -y
sudo add-apt-repository ppa:appimagelauncher-team/stable -y

sudo apt update

# Install (apt)
sudo apt install -y grub-customizer
sudo apt install -y conky-all
sudo apt install -y mpv libmpv-dev
sudo apt install -y flatpak
sudo apt install -y gnome-shell-extensions
sudo apt-get install -y openssh-server
sudo apt install -y aptitude
sudo apt install xrdp -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install libqt5svg5 qml-module-qtquick-controls -y
sudo apt-get -y install pulseeffects
sudo apt install -y neofetch
sudo apt install -y gnome-tweaks
sudo apt install appimagelauncher -y
sudo apt install default-jre -y

# Headphone EQ Presets
mkdir ~/.autoeq
wget https://github.com/jaakkopasanen/AutoEq/raw/master/results/rtings/rtings_harman_in-ear_2019v2/Logitech%20G333/Logitech%20G333%20minimum%20phase%2048000Hz.wav -O ~/.autoeq/G433.wav
wget https://github.com/jaakkopasanen/AutoEq/raw/master/results/oratory1990/harman_over-ear_2018/Logitech%20G433/Logitech%20G433%20minimum%20phase%2048000Hz.wav -O ~/.autoeq/G333.wav


# Installation files
mkdir ~/.deb
wget https://github.com/TheElevatedOne/UbuntuStartupInstall/raw/main/install%20files/harmonoid.deb -O ~/.deb/harmonoid.deb
wget https://github.com/TheElevatedOne/UbuntuStartupInstall/raw/main/install%20files/ocs-url.deb -O ~/.deb/ocs-url.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/.deb/chrome.deb
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb -O ~/.deb/steam.deb
wget https://github.com/lutris/lutris/releases/download/v0.5.12/lutris_0.5.12_all.deb -O ~/.deb/lutris.deb

sudo dpkg -i ~/.deb/harmonoid.deb
sudo dpkg -i ~/.deb/ocs-url.deb
sudo dpkg -i ~/.deb/chrome.deb
sudo dpkg -i ~/.deb/steam.deb
sudo dpkg -i ~/.deb/lutris.deb

sudo apt --fix-broken install -y      # Because I don't want to spend my time finding the right dependencies

# Wallpapers
wget https://images.alphacoders.com/786/786599.png?dl=1 -O ~/Pictures/Atlantis-On-Fire.png
wget https://images3.alphacoders.com/791/791016.png?dl=1 -O ~/Pictures/The-Dark-Dimension.png
wget https://images3.alphacoders.com/677/677357.png?dl=1 -O ~/Pictures/Eden-Nebula.png

# Configure Services
mkdir ~/.appimage

cp /etc/conky/conky.conf ~/.conkyrc
sudo rm ~/.conkyrc
wget https://raw.githubusercontent.com/TheElevatedOne/UbuntuStartupInstall/main/.conkyrc -O ~/.conkyrc

sudo systemctl enable ssh
sudo systemctl start ssh
sudo ufw allow ssh
sudo ufw enable
sudo systemctl status xrdp
sudo systemctl start xrdp

# Clean
sudo rm -rf ~/.deb
sudo rm -f ~/conky-setup.sh
sudo rm -f ~/winehq-jammy.sources
sudo rm -f ~/winehq.key

