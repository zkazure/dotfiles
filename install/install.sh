
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

