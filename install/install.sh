#!/bin/bash
## add to sudo
# su - 
# visudo
# add kzheng ALL=(ALL:ALL) ALL
# exit
## can not run  with su


# config your network
sudo apt install ./Clash* -y

# deactivate the prCD
sudo nano /etc/apt/sources.list

sudo apt update && sudo apt upgrade -y
sudo apt modernize-sources

sudo apt install git neovim stow zsh -y
sudo apt install -y make
sudo apt-get install pkg-config build-essential -y
sudo apt install -y libx11-dev
sudo apt-get install libfontconfig1-dev libfreetype6-dev libharfbuzz-dev libxft-dev -y
sudo apt-get install libxinerama-dev -y
sudo apt install libx11-xcb-dev -y 

chmod +x ./suckless.sh
./suckless.sh

# sudo apt install picom
sudo apt install feh -y

# install font
fc-cache -fv

sudo apt install extrepo -your
sudo extrepo enable librewolf
sudo apt update && sudo apt install librewolf
sudo apt install zip curl -y
chsh -s /bin/sh

sudo systemctl diable lightdm

sudo apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup update
cd ~/src 
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
sudo mv target/release/yazi target/release/ya /usr/local/bin/

## ssh key with github
ssh-keygen -t rsa -b 4096
cp ./ssh-config ~/.ssh/config

sudo apt install emacs
# sudo apt install cmake libtool
sudo apt install pipewire pipewire-audio pipewire-pulse
systemctl --user enable pipewire
sudo mv ./50-synaptics.conf /etc/X11/xorg.conf.d/

sudo apt remove pulseaudio-utils xfce4-pulseaudio-plugin
