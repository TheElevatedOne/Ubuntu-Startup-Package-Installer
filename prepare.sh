sudo add-apt-repository ppa:trebelnik-stefina/grub-customizer
sudo apt update
sudo apt install -y grub-customizer

sudo apt install -y conky-all
cp /etc/conky/conky.conf ~/.conkyrc

sudo apt install -y mpv libmpv-dev
sudo dpkg -i ~/Downloads/harmonoid-linux-x86_64.deb

sudo apt install -y flatpak
sudo flatpak install ~/Downloads/com.mattjakeman.ExtensionManager.flatpakref

wget https://images.alphacoders.com/786/786599.png?dl=1 -O ~/Pictures/Atlantis-Nebula.png
wget https://images3.alphacoders.com/791/791016.png?dl=1 -O ~/Pictures/The-Dark-Dimension.png
wget https://images3.alphacoders.com/677/677357.png?dl=1 -O ~/Pictures/Eden-Nebula.png

sudo apt install -y gnome-shell-extensions

sudo apt-get install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
sudo ufw allow ssh
sudo ufw enable

sudo apt install -y aptitude

sudo apt install xrdp -y
sudo systemctl status xrdp
sudo systemctl start xrdp
