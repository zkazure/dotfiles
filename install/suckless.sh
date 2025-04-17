#!/bin/bash

config="$HOME/dotfiles/.config/"
suckless=("$config/dwm" "$config/dwmblocks" 
          "$config/dmenu" "$config/st")

for suck in "${suckless[@]}"; do 
  sudo make clean install
  echo "Compile Success!!!"
done
