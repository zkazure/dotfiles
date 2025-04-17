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

sudo apt install picom -y
